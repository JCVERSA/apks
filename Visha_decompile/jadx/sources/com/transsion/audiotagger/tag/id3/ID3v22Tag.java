package com.transsion.audiotagger.tag.id3;

import com.lzy.okgo.model.Progress;
import com.transsion.audiotagger.audio.mp3.MP3File;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.EmptyFrameException;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.InvalidFrameException;
import com.transsion.audiotagger.tag.InvalidFrameIdentifierException;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.PaddingException;
import com.transsion.audiotagger.tag.TagException;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagNotFoundException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.id3.framebody.AbstractFrameBodyTextInfo;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyPIC;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTCON;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTDRC;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import com.transsion.audiotagger.tag.images.Artwork;
import com.transsion.audiotagger.tag.images.ArtworkFactory;
import com.transsion.audiotagger.tag.reference.PictureTypes;
import com.transsion.socket.pkgdata.SocketData;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.logging.Level;
import org.apache.commons.lang3.CharEncoding;

public class ID3v22Tag extends AbstractID3v2Tag {
    public static final byte MAJOR_VERSION = 2;
    public static final int MASK_V22_COMPRESSION = 64;
    public static final int MASK_V22_UNSYNCHRONIZATION = 128;
    public static final byte RELEASE = 2;
    public static final byte REVISION = 0;
    protected static final String TYPE_COMPRESSION = "compression";
    protected static final String TYPE_UNSYNCHRONISATION = "unsyncronisation";
    protected boolean compression;
    protected boolean unsynchronization;

    public ID3v22Tag() {
        this.compression = false;
        this.unsynchronization = false;
        this.frameMap = new LinkedHashMap();
        this.encryptedFrameMap = new LinkedHashMap();
    }

    private void readHeaderFlags(ByteBuffer byteBuffer) throws TagException {
        byte b = byteBuffer.get();
        boolean z = (b & SocketData.CLAZZ_TYPE_END_SOCKET) != 0;
        this.unsynchronization = z;
        this.compression = (b & 64) != 0;
        if (z) {
            AbstractID3Tag.logger.config(ErrorMessage.ID3_TAG_UNSYNCHRONIZED.getMsg(getLoggingFilename()));
        }
        if (this.compression) {
            AbstractID3Tag.logger.config(ErrorMessage.ID3_TAG_COMPRESSED.getMsg(getLoggingFilename()));
        }
        if ((b & 32) != 0) {
            AbstractID3Tag.logger.warning(ErrorMessage.ID3_INVALID_OR_UNKNOWN_FLAG_SET.getMsg(getLoggingFilename(), 32));
        }
        if ((b & 16) != 0) {
            AbstractID3Tag.logger.warning(ErrorMessage.ID3_INVALID_OR_UNKNOWN_FLAG_SET.getMsg(getLoggingFilename(), 16));
        }
        if ((b & 8) != 0) {
            AbstractID3Tag.logger.warning(ErrorMessage.ID3_INVALID_OR_UNKNOWN_FLAG_SET.getMsg(getLoggingFilename(), 8));
        }
        if ((b & 4) != 0) {
            AbstractID3Tag.logger.warning(ErrorMessage.ID3_INVALID_OR_UNKNOWN_FLAG_SET.getMsg(getLoggingFilename(), 4));
        }
        if ((b & 2) != 0) {
            AbstractID3Tag.logger.warning(ErrorMessage.ID3_INVALID_OR_UNKNOWN_FLAG_SET.getMsg(getLoggingFilename(), 2));
        }
        if ((b & 1) != 0) {
            AbstractID3Tag.logger.warning(ErrorMessage.ID3_INVALID_OR_UNKNOWN_FLAG_SET.getMsg(getLoggingFilename(), 8));
        }
    }

    private ByteBuffer writeHeaderToBuffer(int i, int i2) throws IOException {
        this.compression = false;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(10);
        byteBufferAllocate.put(AbstractID3v2Tag.TAG_ID);
        byteBufferAllocate.put(getMajorVersion());
        byteBufferAllocate.put(getRevision());
        byte b = this.unsynchronization ? (byte) (-128) : (byte) 0;
        if (this.compression) {
            b = (byte) (b | 64);
        }
        byteBufferAllocate.put(b);
        byteBufferAllocate.put(ID3SyncSafeInteger.valueToBuffer(i + i2));
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    @Override
    public void addFrame(AbstractID3v2Frame abstractID3v2Frame) {
        try {
            if (abstractID3v2Frame instanceof ID3v22Frame) {
                copyFrameIntoMap(abstractID3v2Frame.getIdentifier(), abstractID3v2Frame);
                return;
            }
            for (AbstractID3v2Frame abstractID3v2Frame2 : convertFrame(abstractID3v2Frame)) {
                copyFrameIntoMap(abstractID3v2Frame2.getIdentifier(), abstractID3v2Frame2);
            }
        } catch (InvalidFrameException unused) {
            AbstractID3Tag.logger.log(Level.SEVERE, "Unable to convert frame:" + abstractID3v2Frame.getIdentifier());
        }
    }

    @Override
    public List<AbstractID3v2Frame> convertFrame(AbstractID3v2Frame abstractID3v2Frame) throws InvalidFrameException {
        ArrayList arrayList = new ArrayList();
        if (abstractID3v2Frame.getIdentifier().equals(ID3v24Frames.FRAME_ID_YEAR) && (abstractID3v2Frame.getBody() instanceof FrameBodyTDRC)) {
            FrameBodyTDRC frameBodyTDRC = (FrameBodyTDRC) abstractID3v2Frame.getBody();
            if (frameBodyTDRC.getYear().length() != 0) {
                ID3v22Frame iD3v22Frame = new ID3v22Frame(ID3v22Frames.FRAME_ID_V2_TYER);
                ((AbstractFrameBodyTextInfo) iD3v22Frame.getBody()).setText(frameBodyTDRC.getYear());
                arrayList.add(iD3v22Frame);
            }
            if (frameBodyTDRC.getTime().length() != 0) {
                ID3v22Frame iD3v22Frame2 = new ID3v22Frame(ID3v22Frames.FRAME_ID_V2_TIME);
                ((AbstractFrameBodyTextInfo) iD3v22Frame2.getBody()).setText(frameBodyTDRC.getTime());
                arrayList.add(iD3v22Frame2);
            }
        } else {
            arrayList.add(new ID3v22Frame(abstractID3v2Frame));
        }
        return arrayList;
    }

    @Override
    public void copyPrimitives(AbstractID3v2Tag abstractID3v2Tag) {
        AbstractID3Tag.logger.config("Copying primitives");
        super.copyPrimitives(abstractID3v2Tag);
        if (abstractID3v2Tag instanceof ID3v22Tag) {
            ID3v22Tag iD3v22Tag = (ID3v22Tag) abstractID3v2Tag;
            this.compression = iD3v22Tag.compression;
            this.unsynchronization = iD3v22Tag.unsynchronization;
        } else if (abstractID3v2Tag instanceof ID3v23Tag) {
            ID3v23Tag iD3v23Tag = (ID3v23Tag) abstractID3v2Tag;
            this.compression = iD3v23Tag.compression;
            this.unsynchronization = iD3v23Tag.unsynchronization;
        } else if (abstractID3v2Tag instanceof ID3v24Tag) {
            this.compression = false;
            this.unsynchronization = ((ID3v24Tag) abstractID3v2Tag).unsynchronization;
        }
    }

    public TagField createArtworkField(byte[] bArr, String str) {
        ID3v22Frame iD3v22FrameCreateFrame = createFrame(getFrameAndSubIdFromGenericKey(FieldKey.COVER_ART).getFrameId());
        FrameBodyPIC frameBodyPIC = (FrameBodyPIC) iD3v22FrameCreateFrame.getBody();
        frameBodyPIC.setObjectValue(DataTypes.OBJ_PICTURE_DATA, bArr);
        frameBodyPIC.setObjectValue(DataTypes.OBJ_PICTURE_TYPE, PictureTypes.DEFAULT_ID);
        frameBodyPIC.setObjectValue(DataTypes.OBJ_IMAGE_FORMAT, ImageFormats.getFormatForMimeType(str));
        frameBodyPIC.setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
        return iD3v22FrameCreateFrame;
    }

    public TagField createField(ID3v22FieldKey iD3v22FieldKey, String str) throws FieldDataInvalidException, KeyNotFoundException {
        if (iD3v22FieldKey != null) {
            return doCreateTagField(new AbstractID3v2Tag.FrameAndSubId(null, iD3v22FieldKey.getFrameId(), iD3v22FieldKey.getSubId()), str);
        }
        throw new KeyNotFoundException();
    }

    @Override
    public void createStructure() {
        MP3File.getStructureFormatter().openHeadingElement(Progress.TAG, getIdentifier());
        super.createStructureHeader();
        MP3File.getStructureFormatter().openHeadingElement("header", "");
        MP3File.getStructureFormatter().addElement("compression", this.compression);
        MP3File.getStructureFormatter().addElement(TYPE_UNSYNCHRONISATION, this.unsynchronization);
        MP3File.getStructureFormatter().closeHeadingElement("header");
        super.createStructureBody();
        MP3File.getStructureFormatter().closeHeadingElement(Progress.TAG);
    }

    public void deleteField(ID3v22FieldKey iD3v22FieldKey) throws KeyNotFoundException {
        if (iD3v22FieldKey == null) {
            throw new KeyNotFoundException();
        }
        super.doDeleteTagField(new AbstractID3v2Tag.FrameAndSubId(null, iD3v22FieldKey.getFrameId(), iD3v22FieldKey.getSubId()));
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof ID3v22Tag)) {
            return false;
        }
        ID3v22Tag iD3v22Tag = (ID3v22Tag) obj;
        return this.compression == iD3v22Tag.compression && this.unsynchronization == iD3v22Tag.unsynchronization && super.equals(obj);
    }

    @Override
    public List<String> getAll(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey != FieldKey.GENRE) {
            return super.getAll(fieldKey);
        }
        List<TagField> fields = getFields(fieldKey);
        ArrayList arrayList = new ArrayList();
        if (fields != null && fields.size() > 0) {
            Iterator<String> it = ((FrameBodyTCON) ((AbstractID3v2Frame) fields.get(0)).getBody()).getValues().iterator();
            while (it.hasNext()) {
                arrayList.add(FrameBodyTCON.convertID3v22GenreToGeneric(it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public List<Artwork> getArtworkList() {
        List<TagField> fields = getFields(FieldKey.COVER_ART);
        ArrayList arrayList = new ArrayList(fields.size());
        Iterator<TagField> it = fields.iterator();
        while (it.hasNext()) {
            FrameBodyPIC frameBodyPIC = (FrameBodyPIC) ((AbstractID3v2Frame) it.next()).getBody();
            Artwork artwork = ArtworkFactory.getNew();
            artwork.setMimeType(ImageFormats.getMimeTypeForFormat(frameBodyPIC.getFormatType()));
            artwork.setPictureType(frameBodyPIC.getPictureType());
            if (frameBodyPIC.isImageUrl()) {
                artwork.setLinked(true);
                artwork.setImageUrl(frameBodyPIC.getImageUrl());
            } else {
                artwork.setBinaryData(frameBodyPIC.getImageData());
            }
            arrayList.add(artwork);
        }
        return arrayList;
    }

    public String getFirst(ID3v22FieldKey iD3v22FieldKey) throws KeyNotFoundException {
        if (iD3v22FieldKey == null) {
            throw new KeyNotFoundException();
        }
        FieldKey genericKeyFromId3 = ID3v22Frames.getInstanceOf().getGenericKeyFromId3(iD3v22FieldKey);
        return genericKeyFromId3 != null ? super.getFirst(genericKeyFromId3) : super.doGetValueAtIndex(new AbstractID3v2Tag.FrameAndSubId(null, iD3v22FieldKey.getFrameId(), iD3v22FieldKey.getSubId()), 0);
    }

    @Override
    public AbstractID3v2Tag.FrameAndSubId getFrameAndSubIdFromGenericKey(FieldKey fieldKey) {
        if (fieldKey == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        ID3v22FieldKey id3KeyFromGenericKey = ID3v22Frames.getInstanceOf().getId3KeyFromGenericKey(fieldKey);
        if (id3KeyFromGenericKey != null) {
            return new AbstractID3v2Tag.FrameAndSubId(fieldKey, id3KeyFromGenericKey.getFrameId(), id3KeyFromGenericKey.getSubId());
        }
        throw new KeyNotFoundException(fieldKey.name());
    }

    @Override
    public ID3Frames getID3Frames() {
        return ID3v22Frames.getInstanceOf();
    }

    @Override
    public String getIdentifier() {
        return "ID3v2_2.20";
    }

    @Override
    public byte getMajorVersion() {
        return (byte) 2;
    }

    @Override
    public Comparator getPreferredFrameOrderComparator() {
        return ID3v22PreferredFrameOrderComparator.getInstanceof();
    }

    @Override
    public byte getRelease() {
        return (byte) 2;
    }

    @Override
    public byte getRevision() {
        return (byte) 0;
    }

    @Override
    public int getSize() {
        return super.getSize() + 10;
    }

    @Override
    public String getValue(FieldKey fieldKey, int i) throws KeyNotFoundException {
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        if (fieldKey != FieldKey.GENRE) {
            return super.getValue(fieldKey, i);
        }
        List<TagField> fields = getFields(fieldKey);
        return (fields == null || fields.size() <= 0) ? "" : FrameBodyTCON.convertID3v22GenreToGeneric(((FrameBodyTCON) ((AbstractID3v2Frame) fields.get(0)).getBody()).getValues().get(i));
    }

    public boolean isCompression() {
        return this.compression;
    }

    public boolean isUnsynchronization() {
        return this.unsynchronization;
    }

    @Override
    public void loadFrameIntoMap(String str, AbstractID3v2Frame abstractID3v2Frame) {
        if (abstractID3v2Frame.getBody() instanceof FrameBodyTCON) {
            ((FrameBodyTCON) abstractID3v2Frame.getBody()).setV23Format();
        }
        super.loadFrameIntoMap(str, abstractID3v2Frame);
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws TagException {
        if (!seek(byteBuffer)) {
            throw new TagNotFoundException("ID3v2.20 tag not found");
        }
        AbstractID3Tag.logger.config(getLoggingFilename() + ":Reading tag from file");
        readHeaderFlags(byteBuffer);
        int iBufferToValue = ID3SyncSafeInteger.bufferToValue(byteBuffer);
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        if (this.unsynchronization) {
            byteBufferSlice = ID3Unsynchronization.synchronize(byteBufferSlice);
        }
        readFrames(byteBufferSlice, iBufferToValue);
        AbstractID3Tag.logger.config(getLoggingFilename() + ":Loaded Frames,there are:" + this.frameMap.keySet().size());
    }

    public void readFrames(ByteBuffer byteBuffer, int i) {
        this.frameMap = new LinkedHashMap();
        this.encryptedFrameMap = new LinkedHashMap();
        this.fileReadSize = i;
        AbstractID3Tag.logger.finest(getLoggingFilename() + ":Start of frame body at:" + byteBuffer.position() + ",frames sizes and padding is:" + i);
        while (byteBuffer.position() < i) {
            try {
                AbstractID3Tag.logger.finest(getLoggingFilename() + ":looking for next frame at:" + byteBuffer.position());
                ID3v22Frame iD3v22Frame = new ID3v22Frame(byteBuffer, getLoggingFilename());
                loadFrameIntoMap(iD3v22Frame.getIdentifier(), iD3v22Frame);
            } catch (EmptyFrameException e) {
                AbstractID3Tag.logger.warning(getLoggingFilename() + ":Empty Frame:" + e.getMessage());
                this.emptyFrameBytes = this.emptyFrameBytes + 6;
            } catch (InvalidDataTypeException e2) {
                AbstractID3Tag.logger.warning(getLoggingFilename() + ":Corrupt Frame:" + e2.getMessage());
                this.invalidFrames = this.invalidFrames + 1;
            } catch (PaddingException unused) {
                AbstractID3Tag.logger.config(getLoggingFilename() + ":Found padding starting at:" + byteBuffer.position());
                return;
            } catch (InvalidFrameIdentifierException e3) {
                AbstractID3Tag.logger.config(getLoggingFilename() + ":Invalid Frame Identifier:" + e3.getMessage());
                this.invalidFrames = this.invalidFrames + 1;
                return;
            } catch (InvalidFrameException e4) {
                AbstractID3Tag.logger.warning(getLoggingFilename() + ":Invalid Frame:" + e4.getMessage());
                this.invalidFrames = this.invalidFrames + 1;
                return;
            }
        }
    }

    public void translateFrame(AbstractID3v2Frame abstractID3v2Frame) {
        FrameBodyTDRC frameBodyTDRC = (FrameBodyTDRC) abstractID3v2Frame.getBody();
        if (frameBodyTDRC.getYear().length() != 0) {
            ID3v22Frame iD3v22Frame = new ID3v22Frame(ID3v22Frames.FRAME_ID_V2_TYER);
            ((AbstractFrameBodyTextInfo) iD3v22Frame.getBody()).setText(frameBodyTDRC.getYear());
            this.frameMap.put(iD3v22Frame.getIdentifier(), iD3v22Frame);
        }
        if (frameBodyTDRC.getTime().length() != 0) {
            ID3v22Frame iD3v22Frame2 = new ID3v22Frame(ID3v22Frames.FRAME_ID_V2_TIME);
            ((AbstractFrameBodyTextInfo) iD3v22Frame2.getBody()).setText(frameBodyTDRC.getTime());
            this.frameMap.put(iD3v22Frame2.getIdentifier(), iD3v22Frame2);
        }
    }

    @Override
    public long write(File file, long j) throws Throwable {
        setLoggingFilename(file.getName());
        AbstractID3Tag.logger.config("Writing tag to file:" + getLoggingFilename());
        byte[] byteArray = writeFramesToBuffer().toByteArray();
        this.unsynchronization = TagOptionSingleton.getInstance().isUnsyncTags() && ID3Unsynchronization.requiresUnsynchronization(byteArray);
        if (isUnsynchronization()) {
            byteArray = ID3Unsynchronization.unsynchronize(byteArray);
            AbstractID3Tag.logger.config(getLoggingFilename() + ":bodybytebuffer:sizeafterunsynchronisation:" + byteArray.length);
        }
        byte[] bArr = byteArray;
        int iCalculateTagSize = calculateTagSize(bArr.length + 10, (int) j);
        int length = iCalculateTagSize - (bArr.length + 10);
        AbstractID3Tag.logger.config(getLoggingFilename() + ":Current audiostart:" + j);
        AbstractID3Tag.logger.config(getLoggingFilename() + ":Size including padding:" + iCalculateTagSize);
        AbstractID3Tag.logger.config(getLoggingFilename() + ":Padding:" + length);
        writeBufferToFile(file, writeHeaderToBuffer(length, bArr.length), bArr, length, iCalculateTagSize, j);
        return iCalculateTagSize;
    }

    @Override
    public ID3v22Frame createFrame(String str) {
        return new ID3v22Frame(str);
    }

    @Override
    public TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        if (strArr != null) {
            String str = strArr[0];
            if (fieldKey != FieldKey.GENRE) {
                return super.createField(fieldKey, strArr);
            }
            if (str != null) {
                ID3v22Frame iD3v22FrameCreateFrame = createFrame(getFrameAndSubIdFromGenericKey(fieldKey).getFrameId());
                FrameBodyTCON frameBodyTCON = (FrameBodyTCON) iD3v22FrameCreateFrame.getBody();
                frameBodyTCON.setV23Format();
                frameBodyTCON.setText(FrameBodyTCON.convertGenericToID3v22Genre(str));
                return iD3v22FrameCreateFrame;
            }
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
    }

    @Override
    public void deleteField(String str) {
        super.doDeleteTagField(new AbstractID3v2Tag.FrameAndSubId(null, str, null));
    }

    public ID3v22Tag(ID3v22Tag iD3v22Tag) {
        super(iD3v22Tag);
        this.compression = false;
        this.unsynchronization = false;
        AbstractID3Tag.logger.config("Creating tag from another tag of same type");
        copyPrimitives(iD3v22Tag);
        copyFrames(iD3v22Tag);
    }

    public ID3v22Tag(AbstractTag abstractTag) {
        ID3v24Tag iD3v24Tag;
        this.compression = false;
        this.unsynchronization = false;
        this.frameMap = new LinkedHashMap();
        this.encryptedFrameMap = new LinkedHashMap();
        AbstractID3Tag.logger.config("Creating tag from a tag of a different version");
        if (abstractTag != null) {
            if (!(abstractTag instanceof ID3v23Tag) && (abstractTag instanceof ID3v22Tag)) {
                throw new UnsupportedOperationException("Copy Constructor not called. Please type cast the argument");
            }
            if (abstractTag instanceof ID3v24Tag) {
                iD3v24Tag = (ID3v24Tag) abstractTag;
            } else {
                iD3v24Tag = new ID3v24Tag(abstractTag);
            }
            setLoggingFilename(iD3v24Tag.getLoggingFilename());
            copyPrimitives(iD3v24Tag);
            copyFrames(iD3v24Tag);
            AbstractID3Tag.logger.config("Created tag from a tag of a different version");
        }
    }

    @Override
    public TagField createField(Artwork artwork) throws FieldDataInvalidException {
        ID3v22Frame iD3v22FrameCreateFrame = createFrame(getFrameAndSubIdFromGenericKey(FieldKey.COVER_ART).getFrameId());
        FrameBodyPIC frameBodyPIC = (FrameBodyPIC) iD3v22FrameCreateFrame.getBody();
        if (!artwork.isLinked()) {
            frameBodyPIC.setObjectValue(DataTypes.OBJ_PICTURE_DATA, artwork.getBinaryData());
            frameBodyPIC.setObjectValue(DataTypes.OBJ_PICTURE_TYPE, Integer.valueOf(artwork.getPictureType()));
            frameBodyPIC.setObjectValue(DataTypes.OBJ_IMAGE_FORMAT, ImageFormats.getFormatForMimeType(artwork.getMimeType()));
            frameBodyPIC.setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
            return iD3v22FrameCreateFrame;
        }
        try {
            frameBodyPIC.setObjectValue(DataTypes.OBJ_PICTURE_DATA, artwork.getImageUrl().getBytes(CharEncoding.ISO_8859_1));
            frameBodyPIC.setObjectValue(DataTypes.OBJ_PICTURE_TYPE, Integer.valueOf(artwork.getPictureType()));
            frameBodyPIC.setObjectValue(DataTypes.OBJ_IMAGE_FORMAT, "-->");
            frameBodyPIC.setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
            return iD3v22FrameCreateFrame;
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    @Override
    public void write(WritableByteChannel writableByteChannel, int i) throws IOException {
        AbstractID3Tag.logger.config(getLoggingFilename() + ":Writing tag to channel");
        byte[] byteArray = writeFramesToBuffer().toByteArray();
        AbstractID3Tag.logger.config(getLoggingFilename() + ":bodybytebuffer:sizebeforeunsynchronisation:" + byteArray.length);
        this.unsynchronization = TagOptionSingleton.getInstance().isUnsyncTags() && ID3Unsynchronization.requiresUnsynchronization(byteArray);
        if (isUnsynchronization()) {
            byteArray = ID3Unsynchronization.unsynchronize(byteArray);
            AbstractID3Tag.logger.config(getLoggingFilename() + ":bodybytebuffer:sizeafterunsynchronisation:" + byteArray.length);
        }
        int iCalculateTagSize = i > 0 ? calculateTagSize(byteArray.length + 10, i) - (byteArray.length + 10) : 0;
        writableByteChannel.write(writeHeaderToBuffer(iCalculateTagSize, byteArray.length));
        writableByteChannel.write(ByteBuffer.wrap(byteArray));
        writePadding(writableByteChannel, iCalculateTagSize);
    }

    public ID3v22Tag(ByteBuffer byteBuffer, String str) throws TagException {
        this.compression = false;
        this.unsynchronization = false;
        setLoggingFilename(str);
        read(byteBuffer);
    }

    public ID3v22Tag(ByteBuffer byteBuffer) throws TagException {
        this(byteBuffer, "");
    }
}
