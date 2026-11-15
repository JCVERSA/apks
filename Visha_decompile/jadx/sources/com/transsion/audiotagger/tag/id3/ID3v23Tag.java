package com.transsion.audiotagger.tag.id3;

import com.lzy.okgo.model.Progress;
import com.transsion.apiinvoke.common.router.ProcessInfo;
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
import com.transsion.audiotagger.tag.TagTextField;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.Pair;
import com.transsion.audiotagger.tag.datatype.PairedTextEncodedStringNullTerminated;
import com.transsion.audiotagger.tag.id3.framebody.AbstractFrameBodyTextInfo;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyAPIC;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyIPLS;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTCON;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTDAT;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTDRC;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTIME;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTIPL;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTMCL;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTYER;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.logging.Level;
import org.apache.commons.lang3.CharEncoding;

public class ID3v23Tag extends AbstractID3v2Tag {
    protected static int FIELD_TAG_EXT_SIZE_LENGTH = 4;
    public static final byte MAJOR_VERSION = 3;
    public static final int MASK_V23_CRC_DATA_PRESENT = 128;
    public static final int MASK_V23_EMBEDDED_INFO_FLAG = 2;
    public static final int MASK_V23_EXPERIMENTAL = 32;
    public static final int MASK_V23_EXTENDED_HEADER = 64;
    public static final int MASK_V23_UNSYNCHRONIZATION = 128;
    public static final byte RELEASE = 2;
    public static final byte REVISION = 0;
    protected static int TAG_EXT_HEADER_CRC_LENGTH = 4;
    protected static int TAG_EXT_HEADER_DATA_LENGTH = 10 - 4;
    protected static int TAG_EXT_HEADER_LENGTH = 10;
    protected static final String TYPE_CRCDATA = "crcdata";
    protected static final String TYPE_EXPERIMENTAL = "experimental";
    protected static final String TYPE_EXTENDED = "extended";
    protected static final String TYPE_PADDINGSIZE = "paddingsize";
    protected static final String TYPE_UNSYNCHRONISATION = "unsyncronisation";
    protected boolean compression;
    private int crc32;
    protected boolean crcDataFlag;
    protected boolean experimental;
    protected boolean extended;
    private int paddingSize;
    protected boolean unsynchronization;

    public ID3v23Tag() {
        this.crcDataFlag = false;
        this.experimental = false;
        this.extended = false;
        this.paddingSize = 0;
        this.unsynchronization = false;
        this.compression = false;
        this.frameMap = new LinkedHashMap();
        this.encryptedFrameMap = new LinkedHashMap();
    }

    private void readExtendedHeader(ByteBuffer byteBuffer, int i) {
        boolean z;
        int i2 = byteBuffer.getInt();
        int i3 = TAG_EXT_HEADER_DATA_LENGTH;
        if (i2 == i3) {
            z = (byteBuffer.get() & SocketData.CLAZZ_TYPE_END_SOCKET) != 0;
            this.crcDataFlag = z;
            if (z) {
                AbstractID3Tag.logger.warning(ErrorMessage.ID3_TAG_CRC_FLAG_SET_INCORRECTLY.getMsg(getLoggingFilename()));
            }
            byteBuffer.get();
            int i4 = byteBuffer.getInt();
            this.paddingSize = i4;
            if (i4 > 0) {
                AbstractID3Tag.logger.config(ErrorMessage.ID3_TAG_PADDING_SIZE.getMsg(getLoggingFilename(), Integer.valueOf(this.paddingSize)));
                return;
            }
            return;
        }
        if (i2 != i3 + TAG_EXT_HEADER_CRC_LENGTH) {
            AbstractID3Tag.logger.warning(ErrorMessage.ID3_EXTENDED_HEADER_SIZE_INVALID.getMsg(getLoggingFilename(), Integer.valueOf(i2)));
            byteBuffer.position(byteBuffer.position() - FIELD_TAG_EXT_SIZE_LENGTH);
            return;
        }
        AbstractID3Tag.logger.config(ErrorMessage.ID3_TAG_CRC.getMsg(getLoggingFilename()));
        z = (byteBuffer.get() & SocketData.CLAZZ_TYPE_END_SOCKET) != 0;
        this.crcDataFlag = z;
        if (!z) {
            AbstractID3Tag.logger.warning(ErrorMessage.ID3_TAG_CRC_FLAG_SET_INCORRECTLY.getMsg(getLoggingFilename()));
        }
        byteBuffer.get();
        int i5 = byteBuffer.getInt();
        this.paddingSize = i5;
        if (i5 > 0) {
            AbstractID3Tag.logger.config(ErrorMessage.ID3_TAG_PADDING_SIZE.getMsg(getLoggingFilename(), Integer.valueOf(this.paddingSize)));
        }
        this.crc32 = byteBuffer.getInt();
        AbstractID3Tag.logger.config(ErrorMessage.ID3_TAG_CRC_SIZE.getMsg(getLoggingFilename(), Integer.valueOf(this.crc32)));
    }

    private void readHeaderFlags(ByteBuffer byteBuffer) throws TagException {
        byte b = byteBuffer.get();
        this.unsynchronization = (b & SocketData.CLAZZ_TYPE_END_SOCKET) != 0;
        this.extended = (b & 64) != 0;
        this.experimental = (b & 32) != 0;
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
            AbstractID3Tag.logger.warning(ErrorMessage.ID3_INVALID_OR_UNKNOWN_FLAG_SET.getMsg(getLoggingFilename(), 1));
        }
        if (isUnsynchronization()) {
            AbstractID3Tag.logger.config(ErrorMessage.ID3_TAG_UNSYNCHRONIZED.getMsg(getLoggingFilename()));
        }
        if (this.extended) {
            AbstractID3Tag.logger.config(ErrorMessage.ID3_TAG_EXTENDED.getMsg(getLoggingFilename()));
        }
        if (this.experimental) {
            AbstractID3Tag.logger.config(ErrorMessage.ID3_TAG_EXPERIMENTAL.getMsg(getLoggingFilename()));
        }
    }

    private ByteBuffer writeHeaderToBuffer(int i, int i2) throws IOException {
        int i3;
        this.extended = false;
        this.experimental = false;
        this.crcDataFlag = false;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(TAG_EXT_HEADER_LENGTH + 10 + TAG_EXT_HEADER_CRC_LENGTH);
        byteBufferAllocate.put(AbstractID3v2Tag.TAG_ID);
        byteBufferAllocate.put(getMajorVersion());
        byteBufferAllocate.put(getRevision());
        byte b = isUnsynchronization() ? (byte) 128 : (byte) 0;
        if (this.extended) {
            b = (byte) (b | 64);
        }
        if (this.experimental) {
            b = (byte) (b | 32);
        }
        byteBufferAllocate.put(b);
        if (this.extended) {
            i3 = TAG_EXT_HEADER_LENGTH;
            if (this.crcDataFlag) {
                i3 += TAG_EXT_HEADER_CRC_LENGTH;
            }
        } else {
            i3 = 0;
        }
        byteBufferAllocate.put(ID3SyncSafeInteger.valueToBuffer(i2 + i + i3));
        if (this.extended) {
            if (this.crcDataFlag) {
                byteBufferAllocate.putInt(TAG_EXT_HEADER_DATA_LENGTH + TAG_EXT_HEADER_CRC_LENGTH);
                byteBufferAllocate.put((byte) 128);
                byteBufferAllocate.put((byte) 0);
                byteBufferAllocate.putInt(this.paddingSize);
                byteBufferAllocate.putInt(this.crc32);
            } else {
                byteBufferAllocate.putInt(TAG_EXT_HEADER_DATA_LENGTH);
                byteBufferAllocate.put((byte) 0);
                byteBufferAllocate.put((byte) 0);
                byteBufferAllocate.putInt(i);
            }
        }
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    @Override
    public void addFrame(AbstractID3v2Frame abstractID3v2Frame) {
        try {
            if (abstractID3v2Frame instanceof ID3v23Frame) {
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
            frameBodyTDRC.findMatchingMaskAndExtractV3Values();
            if (!frameBodyTDRC.getYear().equals("")) {
                ID3v23Frame iD3v23Frame = new ID3v23Frame(ID3v23Frames.FRAME_ID_V3_TYER);
                ((FrameBodyTYER) iD3v23Frame.getBody()).setText(frameBodyTDRC.getYear());
                arrayList.add(iD3v23Frame);
            }
            if (!frameBodyTDRC.getDate().equals("")) {
                ID3v23Frame iD3v23Frame2 = new ID3v23Frame(ID3v23Frames.FRAME_ID_V3_TDAT);
                ((FrameBodyTDAT) iD3v23Frame2.getBody()).setText(frameBodyTDRC.getDate());
                ((FrameBodyTDAT) iD3v23Frame2.getBody()).setMonthOnly(frameBodyTDRC.isMonthOnly());
                arrayList.add(iD3v23Frame2);
            }
            if (!frameBodyTDRC.getTime().equals("")) {
                ID3v23Frame iD3v23Frame3 = new ID3v23Frame(ID3v23Frames.FRAME_ID_V3_TIME);
                ((FrameBodyTIME) iD3v23Frame3.getBody()).setText(frameBodyTDRC.getTime());
                ((FrameBodyTIME) iD3v23Frame3.getBody()).setHoursOnly(frameBodyTDRC.isHoursOnly());
                arrayList.add(iD3v23Frame3);
            }
        } else if (abstractID3v2Frame.getIdentifier().equals(ID3v24Frames.FRAME_ID_INVOLVED_PEOPLE) && (abstractID3v2Frame.getBody() instanceof FrameBodyTIPL)) {
            List<Pair> mapping = ((FrameBodyTIPL) abstractID3v2Frame.getBody()).getPairing().getMapping();
            ID3v23Frame iD3v23Frame4 = new ID3v23Frame((ID3v24Frame) abstractID3v2Frame, ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE);
            iD3v23Frame4.setBody(new FrameBodyIPLS(abstractID3v2Frame.getBody().getTextEncoding(), mapping));
            arrayList.add(iD3v23Frame4);
        } else if (abstractID3v2Frame.getIdentifier().equals(ID3v24Frames.FRAME_ID_MUSICIAN_CREDITS) && (abstractID3v2Frame.getBody() instanceof FrameBodyTMCL)) {
            List<Pair> mapping2 = ((FrameBodyTMCL) abstractID3v2Frame.getBody()).getPairing().getMapping();
            ID3v23Frame iD3v23Frame5 = new ID3v23Frame((ID3v24Frame) abstractID3v2Frame, ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE);
            iD3v23Frame5.setBody(new FrameBodyIPLS(abstractID3v2Frame.getBody().getTextEncoding(), mapping2));
            arrayList.add(iD3v23Frame5);
        } else {
            arrayList.add(new ID3v23Frame(abstractID3v2Frame));
        }
        return arrayList;
    }

    @Override
    public void copyPrimitives(AbstractID3v2Tag abstractID3v2Tag) {
        AbstractID3Tag.logger.config("Copying primitives");
        super.copyPrimitives(abstractID3v2Tag);
        if (abstractID3v2Tag instanceof ID3v23Tag) {
            ID3v23Tag iD3v23Tag = (ID3v23Tag) abstractID3v2Tag;
            this.crcDataFlag = iD3v23Tag.crcDataFlag;
            this.experimental = iD3v23Tag.experimental;
            this.extended = iD3v23Tag.extended;
            this.crc32 = iD3v23Tag.crc32;
            this.paddingSize = iD3v23Tag.paddingSize;
        }
    }

    public TagField createArtworkField(byte[] bArr, String str) {
        ID3v23Frame iD3v23FrameCreateFrame = createFrame(getFrameAndSubIdFromGenericKey(FieldKey.COVER_ART).getFrameId());
        FrameBodyAPIC frameBodyAPIC = (FrameBodyAPIC) iD3v23FrameCreateFrame.getBody();
        frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_DATA, bArr);
        frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_TYPE, PictureTypes.DEFAULT_ID);
        frameBodyAPIC.setObjectValue(DataTypes.OBJ_MIME_TYPE, str);
        frameBodyAPIC.setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
        return iD3v23FrameCreateFrame;
    }

    public TagField createField(ID3v23FieldKey iD3v23FieldKey, String str) throws FieldDataInvalidException, KeyNotFoundException {
        if (iD3v23FieldKey != null) {
            return super.doCreateTagField(new AbstractID3v2Tag.FrameAndSubId(null, iD3v23FieldKey.getFrameId(), iD3v23FieldKey.getSubId()), str);
        }
        throw new KeyNotFoundException();
    }

    @Override
    public void createStructure() {
        MP3File.getStructureFormatter().openHeadingElement(Progress.TAG, getIdentifier());
        super.createStructureHeader();
        MP3File.getStructureFormatter().openHeadingElement("header", "");
        MP3File.getStructureFormatter().addElement(TYPE_UNSYNCHRONISATION, isUnsynchronization());
        MP3File.getStructureFormatter().addElement(TYPE_EXTENDED, this.extended);
        MP3File.getStructureFormatter().addElement(TYPE_EXPERIMENTAL, this.experimental);
        MP3File.getStructureFormatter().addElement(TYPE_CRCDATA, this.crc32);
        MP3File.getStructureFormatter().addElement(TYPE_PADDINGSIZE, this.paddingSize);
        MP3File.getStructureFormatter().closeHeadingElement("header");
        super.createStructureBody();
        MP3File.getStructureFormatter().closeHeadingElement(Progress.TAG);
    }

    public void deleteField(ID3v23FieldKey iD3v23FieldKey) throws KeyNotFoundException {
        if (iD3v23FieldKey == null) {
            throw new KeyNotFoundException();
        }
        super.doDeleteTagField(new AbstractID3v2Tag.FrameAndSubId(null, iD3v23FieldKey.getFrameId(), iD3v23FieldKey.getSubId()));
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof ID3v23Tag)) {
            return false;
        }
        ID3v23Tag iD3v23Tag = (ID3v23Tag) obj;
        return this.crc32 == iD3v23Tag.crc32 && this.crcDataFlag == iD3v23Tag.crcDataFlag && this.experimental == iD3v23Tag.experimental && this.extended == iD3v23Tag.extended && this.paddingSize == iD3v23Tag.paddingSize && super.equals(obj);
    }

    @Override
    public List<String> getAll(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey == FieldKey.GENRE) {
            List<TagField> fields = getFields(fieldKey);
            ArrayList arrayList = new ArrayList();
            if (fields != null && fields.size() > 0) {
                Iterator<String> it = ((FrameBodyTCON) ((AbstractID3v2Frame) fields.get(0)).getBody()).getValues().iterator();
                while (it.hasNext()) {
                    arrayList.add(FrameBodyTCON.convertID3v23GenreToGeneric(it.next()));
                }
            }
            return arrayList;
        }
        if (fieldKey != FieldKey.YEAR) {
            return super.getAll(fieldKey);
        }
        List<TagField> fields2 = getFields(fieldKey);
        ArrayList arrayList2 = new ArrayList();
        if (fields2 != null && fields2.size() > 0) {
            for (TagField tagField : fields2) {
                if (tagField instanceof TagTextField) {
                    arrayList2.add(((TagTextField) tagField).getContent());
                }
            }
        }
        return arrayList2;
    }

    @Override
    public List<Artwork> getArtworkList() {
        List<TagField> fields = getFields(FieldKey.COVER_ART);
        ArrayList arrayList = new ArrayList(fields.size());
        Iterator<TagField> it = fields.iterator();
        while (it.hasNext()) {
            FrameBodyAPIC frameBodyAPIC = (FrameBodyAPIC) ((AbstractID3v2Frame) it.next()).getBody();
            Artwork artwork = ArtworkFactory.getNew();
            artwork.setMimeType(frameBodyAPIC.getMimeType());
            artwork.setPictureType(frameBodyAPIC.getPictureType());
            if (frameBodyAPIC.isImageUrl()) {
                artwork.setLinked(true);
                artwork.setImageUrl(frameBodyAPIC.getImageUrl());
            } else {
                artwork.setBinaryData(frameBodyAPIC.getImageData());
            }
            arrayList.add(artwork);
        }
        return arrayList;
    }

    public int getCrc32() {
        return this.crc32;
    }

    @Override
    public List<TagField> getFields(FieldKey fieldKey) throws KeyNotFoundException {
        AggregatedFrame aggregatedFrame;
        if (fieldKey == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        if (fieldKey == FieldKey.YEAR && (aggregatedFrame = (AggregatedFrame) getFrame(TyerTdatAggregatedFrame.ID_TYER_TDAT)) != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(aggregatedFrame);
            return arrayList;
        }
        return super.getFields(fieldKey);
    }

    public String getFirst(ID3v23FieldKey iD3v23FieldKey) throws KeyNotFoundException {
        if (iD3v23FieldKey == null) {
            throw new KeyNotFoundException();
        }
        FieldKey genericKeyFromId3 = ID3v23Frames.getInstanceOf().getGenericKeyFromId3(iD3v23FieldKey);
        return genericKeyFromId3 != null ? super.getFirst(genericKeyFromId3) : super.doGetValueAtIndex(new AbstractID3v2Tag.FrameAndSubId(null, iD3v23FieldKey.getFrameId(), iD3v23FieldKey.getSubId()), 0);
    }

    @Override
    public AbstractID3v2Tag.FrameAndSubId getFrameAndSubIdFromGenericKey(FieldKey fieldKey) {
        if (fieldKey == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        ID3v23FieldKey id3KeyFromGenericKey = ID3v23Frames.getInstanceOf().getId3KeyFromGenericKey(fieldKey);
        if (id3KeyFromGenericKey != null) {
            return new AbstractID3v2Tag.FrameAndSubId(fieldKey, id3KeyFromGenericKey.getFrameId(), id3KeyFromGenericKey.getSubId());
        }
        throw new KeyNotFoundException(fieldKey.name());
    }

    @Override
    public ID3Frames getID3Frames() {
        return ID3v23Frames.getInstanceOf();
    }

    @Override
    public String getIdentifier() {
        return "ID3v2.30";
    }

    @Override
    public byte getMajorVersion() {
        return (byte) 3;
    }

    public int getPaddingSize() {
        return this.paddingSize;
    }

    @Override
    public Comparator getPreferredFrameOrderComparator() {
        return ID3v23PreferredFrameOrderComparator.getInstanceof();
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
        int i = 10;
        if (this.extended) {
            i = 10 + TAG_EXT_HEADER_LENGTH;
            if (this.crcDataFlag) {
                i += TAG_EXT_HEADER_CRC_LENGTH;
            }
        }
        return i + super.getSize();
    }

    @Override
    public String getValue(FieldKey fieldKey, int i) throws KeyNotFoundException {
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        if (fieldKey == FieldKey.YEAR) {
            AggregatedFrame aggregatedFrame = (AggregatedFrame) getFrame(TyerTdatAggregatedFrame.ID_TYER_TDAT);
            return aggregatedFrame != null ? aggregatedFrame.getContent() : super.getValue(fieldKey, i);
        }
        if (fieldKey != FieldKey.GENRE) {
            return super.getValue(fieldKey, i);
        }
        List<TagField> fields = getFields(fieldKey);
        return (fields == null || fields.size() <= 0) ? "" : FrameBodyTCON.convertID3v23GenreToGeneric(((FrameBodyTCON) ((AbstractID3v2Frame) fields.get(0)).getBody()).getValues().get(i));
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
    public void loadFrameIntoSpecifiedMap(HashMap map, String str, AbstractID3v2Frame abstractID3v2Frame) {
        if (!str.equals(ID3v23Frames.FRAME_ID_V3_TYER) && !str.equals(ID3v23Frames.FRAME_ID_V3_TDAT)) {
            super.loadFrameIntoSpecifiedMap(map, str, abstractID3v2Frame);
            return;
        }
        if (str.equals(ID3v23Frames.FRAME_ID_V3_TDAT) && abstractID3v2Frame.getContent().length() == 0) {
            AbstractID3Tag.logger.warning("TDAT is empty so just ignoring");
            return;
        }
        if (map.containsKey(str) || map.containsKey(TyerTdatAggregatedFrame.ID_TYER_TDAT)) {
            if (this.duplicateFrameId.length() > 0) {
                this.duplicateFrameId += ProcessInfo.SPLIT_NEW_VERSION;
            }
            this.duplicateFrameId += str;
            this.duplicateBytes += abstractID3v2Frame.getSize();
            return;
        }
        if (str.equals(ID3v23Frames.FRAME_ID_V3_TYER)) {
            if (!map.containsKey(ID3v23Frames.FRAME_ID_V3_TDAT)) {
                map.put(ID3v23Frames.FRAME_ID_V3_TYER, abstractID3v2Frame);
                return;
            }
            TyerTdatAggregatedFrame tyerTdatAggregatedFrame = new TyerTdatAggregatedFrame();
            tyerTdatAggregatedFrame.addFrame(abstractID3v2Frame);
            tyerTdatAggregatedFrame.addFrame((AbstractID3v2Frame) map.get(ID3v23Frames.FRAME_ID_V3_TDAT));
            map.remove(ID3v23Frames.FRAME_ID_V3_TDAT);
            map.put(TyerTdatAggregatedFrame.ID_TYER_TDAT, tyerTdatAggregatedFrame);
            return;
        }
        if (str.equals(ID3v23Frames.FRAME_ID_V3_TDAT)) {
            if (!map.containsKey(ID3v23Frames.FRAME_ID_V3_TYER)) {
                map.put(ID3v23Frames.FRAME_ID_V3_TDAT, abstractID3v2Frame);
                return;
            }
            TyerTdatAggregatedFrame tyerTdatAggregatedFrame2 = new TyerTdatAggregatedFrame();
            tyerTdatAggregatedFrame2.addFrame((AbstractID3v2Frame) map.get(ID3v23Frames.FRAME_ID_V3_TYER));
            tyerTdatAggregatedFrame2.addFrame(abstractID3v2Frame);
            map.remove(ID3v23Frames.FRAME_ID_V3_TYER);
            map.put(TyerTdatAggregatedFrame.ID_TYER_TDAT, tyerTdatAggregatedFrame2);
        }
    }

    @Override
    public void processDuplicateFrame(AbstractID3v2Frame abstractID3v2Frame, AbstractID3v2Frame abstractID3v2Frame2) {
        if (abstractID3v2Frame.getIdentifier().equals(ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE)) {
            PairedTextEncodedStringNullTerminated.ValuePairs pairing = ((FrameBodyIPLS) abstractID3v2Frame2.getBody()).getPairing();
            Iterator<Pair> it = ((FrameBodyIPLS) abstractID3v2Frame.getBody()).getPairing().getMapping().iterator();
            while (it.hasNext()) {
                pairing.add(it.next());
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(abstractID3v2Frame2);
        arrayList.add(abstractID3v2Frame);
        this.frameMap.put(abstractID3v2Frame.getIdentifier(), arrayList);
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws TagException {
        if (!seek(byteBuffer)) {
            throw new TagNotFoundException(getIdentifier() + " tag not found");
        }
        AbstractID3Tag.logger.config(getLoggingFilename() + ":Reading ID3v23 tag");
        readHeaderFlags(byteBuffer);
        int iBufferToValue = ID3SyncSafeInteger.bufferToValue(byteBuffer);
        AbstractID3Tag.logger.config(ErrorMessage.ID_TAG_SIZE.getMsg(getLoggingFilename(), Integer.valueOf(iBufferToValue)));
        if (this.extended) {
            readExtendedHeader(byteBuffer, iBufferToValue);
        }
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        if (isUnsynchronization()) {
            byteBufferSlice = ID3Unsynchronization.synchronize(byteBufferSlice);
        }
        readFrames(byteBufferSlice, iBufferToValue);
        AbstractID3Tag.logger.config(getLoggingFilename() + ":Loaded Frames,there are:" + this.frameMap.keySet().size());
    }

    public void readFrames(ByteBuffer byteBuffer, int i) {
        this.frameMap = new LinkedHashMap();
        this.encryptedFrameMap = new LinkedHashMap();
        this.fileReadSize = i;
        AbstractID3Tag.logger.finest(getLoggingFilename() + ":Start of frame body at:" + byteBuffer.position() + ",frames data size is:" + i);
        while (byteBuffer.position() < i) {
            try {
                int iPosition = byteBuffer.position();
                AbstractID3Tag.logger.config(getLoggingFilename() + ":Looking for next frame at:" + iPosition);
                ID3v23Frame iD3v23Frame = new ID3v23Frame(byteBuffer, getLoggingFilename());
                String identifier = iD3v23Frame.getIdentifier();
                AbstractID3Tag.logger.config(getLoggingFilename() + ":Found " + identifier + " at frame at:" + iPosition);
                loadFrameIntoMap(identifier, iD3v23Frame);
            } catch (EmptyFrameException e) {
                AbstractID3Tag.logger.warning(getLoggingFilename() + ":Empty Frame:" + e.getMessage());
                this.emptyFrameBytes = this.emptyFrameBytes + 10;
            } catch (InvalidDataTypeException e2) {
                AbstractID3Tag.logger.warning(getLoggingFilename() + ":Corrupt Frame:" + e2.getMessage());
                this.invalidFrames = this.invalidFrames + 1;
            } catch (PaddingException unused) {
                AbstractID3Tag.logger.config(getLoggingFilename() + ":Found padding starting at:" + byteBuffer.position());
                return;
            } catch (InvalidFrameIdentifierException e3) {
                AbstractID3Tag.logger.warning(getLoggingFilename() + ":Invalid Frame Identifier:" + e3.getMessage());
                this.invalidFrames = this.invalidFrames + 1;
                return;
            } catch (InvalidFrameException e4) {
                AbstractID3Tag.logger.warning(getLoggingFilename() + ":Invalid Frame:" + e4.getMessage());
                this.invalidFrames = this.invalidFrames + 1;
                return;
            }
        }
    }

    @Override
    public long write(File file, long j) throws Throwable {
        setLoggingFilename(file.getName());
        AbstractID3Tag.logger.config("Writing tag to file:" + getLoggingFilename());
        byte[] byteArray = writeFramesToBuffer().toByteArray();
        AbstractID3Tag.logger.config(getLoggingFilename() + ":bodybytebuffer:sizebeforeunsynchronisation:" + byteArray.length);
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
    public ID3v23Frame createFrame(String str) {
        return new ID3v23Frame(str);
    }

    @Override
    public TagField createField(Artwork artwork) throws FieldDataInvalidException {
        ID3v23Frame iD3v23FrameCreateFrame = createFrame(getFrameAndSubIdFromGenericKey(FieldKey.COVER_ART).getFrameId());
        FrameBodyAPIC frameBodyAPIC = (FrameBodyAPIC) iD3v23FrameCreateFrame.getBody();
        if (!artwork.isLinked()) {
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_DATA, artwork.getBinaryData());
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_TYPE, Integer.valueOf(artwork.getPictureType()));
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_MIME_TYPE, artwork.getMimeType());
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
            return iD3v23FrameCreateFrame;
        }
        try {
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_DATA, artwork.getImageUrl().getBytes(CharEncoding.ISO_8859_1));
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_TYPE, Integer.valueOf(artwork.getPictureType()));
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_MIME_TYPE, "-->");
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
            return iD3v23FrameCreateFrame;
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    @Override
    public void deleteField(String str) {
        super.doDeleteTagField(new AbstractID3v2Tag.FrameAndSubId(null, str, null));
    }

    public ID3v23Tag(ID3v23Tag iD3v23Tag) {
        super(iD3v23Tag);
        this.crcDataFlag = false;
        this.experimental = false;
        this.extended = false;
        this.paddingSize = 0;
        this.unsynchronization = false;
        this.compression = false;
        AbstractID3Tag.logger.config("Creating tag from another tag of same type");
        copyPrimitives(iD3v23Tag);
        copyFrames(iD3v23Tag);
    }

    @Override
    public TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        String str;
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        if (strArr != null && (str = strArr[0]) != null) {
            if (fieldKey == FieldKey.GENRE) {
                if (str != null) {
                    ID3v23Frame iD3v23FrameCreateFrame = createFrame(getFrameAndSubIdFromGenericKey(fieldKey).getFrameId());
                    FrameBodyTCON frameBodyTCON = (FrameBodyTCON) iD3v23FrameCreateFrame.getBody();
                    frameBodyTCON.setV23Format();
                    if (TagOptionSingleton.getInstance().isWriteMp3GenresAsText()) {
                        frameBodyTCON.setText(str);
                    } else {
                        frameBodyTCON.setText(FrameBodyTCON.convertGenericToID3v23Genre(str));
                    }
                    return iD3v23FrameCreateFrame;
                }
                throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
            }
            if (fieldKey == FieldKey.YEAR) {
                if (str.length() == 1) {
                    ID3v23Frame iD3v23FrameCreateFrame2 = createFrame(ID3v23Frames.FRAME_ID_V3_TYER);
                    ((AbstractFrameBodyTextInfo) iD3v23FrameCreateFrame2.getBody()).setText("000" + str);
                    return iD3v23FrameCreateFrame2;
                }
                if (str.length() == 2) {
                    ID3v23Frame iD3v23FrameCreateFrame3 = createFrame(ID3v23Frames.FRAME_ID_V3_TYER);
                    ((AbstractFrameBodyTextInfo) iD3v23FrameCreateFrame3.getBody()).setText("00" + str);
                    return iD3v23FrameCreateFrame3;
                }
                if (str.length() == 3) {
                    ID3v23Frame iD3v23FrameCreateFrame4 = createFrame(ID3v23Frames.FRAME_ID_V3_TYER);
                    ((AbstractFrameBodyTextInfo) iD3v23FrameCreateFrame4.getBody()).setText("0" + str);
                    return iD3v23FrameCreateFrame4;
                }
                if (str.length() == 4) {
                    ID3v23Frame iD3v23FrameCreateFrame5 = createFrame(ID3v23Frames.FRAME_ID_V3_TYER);
                    ((AbstractFrameBodyTextInfo) iD3v23FrameCreateFrame5.getBody()).setText(str);
                    return iD3v23FrameCreateFrame5;
                }
                if (str.length() <= 4) {
                    return null;
                }
                ID3v23Frame iD3v23FrameCreateFrame6 = createFrame(ID3v23Frames.FRAME_ID_V3_TYER);
                ((AbstractFrameBodyTextInfo) iD3v23FrameCreateFrame6.getBody()).setText(str.substring(0, 4));
                if (str.length() >= 10) {
                    String strSubstring = str.substring(5, 7);
                    String strSubstring2 = str.substring(8, 10);
                    ID3v23Frame iD3v23FrameCreateFrame7 = createFrame(ID3v23Frames.FRAME_ID_V3_TDAT);
                    ((AbstractFrameBodyTextInfo) iD3v23FrameCreateFrame7.getBody()).setText(strSubstring2 + strSubstring);
                    TyerTdatAggregatedFrame tyerTdatAggregatedFrame = new TyerTdatAggregatedFrame();
                    tyerTdatAggregatedFrame.addFrame(iD3v23FrameCreateFrame6);
                    tyerTdatAggregatedFrame.addFrame(iD3v23FrameCreateFrame7);
                    return tyerTdatAggregatedFrame;
                }
                if (str.length() < 7) {
                    return iD3v23FrameCreateFrame6;
                }
                String strSubstring3 = str.substring(5, 7);
                ID3v23Frame iD3v23FrameCreateFrame8 = createFrame(ID3v23Frames.FRAME_ID_V3_TDAT);
                ((AbstractFrameBodyTextInfo) iD3v23FrameCreateFrame8.getBody()).setText("01" + strSubstring3);
                TyerTdatAggregatedFrame tyerTdatAggregatedFrame2 = new TyerTdatAggregatedFrame();
                tyerTdatAggregatedFrame2.addFrame(iD3v23FrameCreateFrame6);
                tyerTdatAggregatedFrame2.addFrame(iD3v23FrameCreateFrame8);
                return tyerTdatAggregatedFrame2;
            }
            return super.createField(fieldKey, strArr);
        }
        throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
    }

    @Override
    public void write(WritableByteChannel writableByteChannel, int i) throws IOException {
        AbstractID3Tag.logger.config(getLoggingFilename() + ":Writing tag to channel");
        byte[] byteArray = writeFramesToBuffer().toByteArray();
        AbstractID3Tag.logger.config(getLoggingFilename() + ":bodybytebuffer:sizebeforeunsynchronisation:" + byteArray.length);
        int iCalculateTagSize = 0;
        this.unsynchronization = TagOptionSingleton.getInstance().isUnsyncTags() && ID3Unsynchronization.requiresUnsynchronization(byteArray);
        if (isUnsynchronization()) {
            byteArray = ID3Unsynchronization.unsynchronize(byteArray);
            AbstractID3Tag.logger.config(getLoggingFilename() + ":bodybytebuffer:sizeafterunsynchronisation:" + byteArray.length);
        }
        if (i > 0) {
            iCalculateTagSize = calculateTagSize(byteArray.length + 10, i) - (byteArray.length + 10);
            AbstractID3Tag.logger.config(getLoggingFilename() + ":Padding:" + iCalculateTagSize);
        }
        writableByteChannel.write(writeHeaderToBuffer(iCalculateTagSize, byteArray.length));
        writableByteChannel.write(ByteBuffer.wrap(byteArray));
        writePadding(writableByteChannel, iCalculateTagSize);
    }

    public ID3v23Tag(AbstractTag abstractTag) {
        ID3v24Tag iD3v24Tag;
        this.crcDataFlag = false;
        this.experimental = false;
        this.extended = false;
        this.paddingSize = 0;
        this.unsynchronization = false;
        this.compression = false;
        AbstractID3Tag.logger.config("Creating tag from a tag of a different version");
        this.frameMap = new LinkedHashMap();
        this.encryptedFrameMap = new LinkedHashMap();
        if (abstractTag != null) {
            if (!(abstractTag instanceof ID3v23Tag)) {
                if (abstractTag instanceof ID3v24Tag) {
                    iD3v24Tag = (ID3v24Tag) abstractTag;
                } else {
                    iD3v24Tag = new ID3v24Tag(abstractTag);
                }
                setLoggingFilename(iD3v24Tag.getLoggingFilename());
                copyPrimitives(iD3v24Tag);
                copyFrames(iD3v24Tag);
                AbstractID3Tag.logger.config("Created tag from a tag of a different version");
                return;
            }
            throw new UnsupportedOperationException("Copy Constructor not called. Please type cast the argument");
        }
    }

    public ID3v23Tag(ByteBuffer byteBuffer, String str) throws TagException {
        this.crcDataFlag = false;
        this.experimental = false;
        this.extended = false;
        this.paddingSize = 0;
        this.unsynchronization = false;
        this.compression = false;
        setLoggingFilename(str);
        read(byteBuffer);
    }

    public ID3v23Tag(ByteBuffer byteBuffer) throws TagException {
        this(byteBuffer, "");
    }
}
