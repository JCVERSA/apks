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
import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.PaddingException;
import com.transsion.audiotagger.tag.TagException;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagNotFoundException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.Pair;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyAPIC;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyCOMM;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyIPLS;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTALB;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTCON;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTDRC;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTIPL;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTIT2;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTMCL;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTPE1;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTRCK;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUnsupported;
import com.transsion.audiotagger.tag.id3.valuepair.MusicianCredits;
import com.transsion.audiotagger.tag.id3.valuepair.StandardIPLSKey;
import com.transsion.audiotagger.tag.images.Artwork;
import com.transsion.audiotagger.tag.images.ArtworkFactory;
import com.transsion.audiotagger.tag.lyrics3.AbstractLyrics3;
import com.transsion.audiotagger.tag.lyrics3.Lyrics3v2;
import com.transsion.audiotagger.tag.lyrics3.Lyrics3v2Field;
import com.transsion.audiotagger.tag.reference.GenreTypes;
import com.transsion.audiotagger.tag.reference.PictureTypes;
import com.transsion.socket.pkgdata.SocketData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
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

public class ID3v24Tag extends AbstractID3v2Tag {
    public static final byte MAJOR_VERSION = 4;
    public static final int MASK_V24_COMPRESSION = 16;
    public static final int MASK_V24_CRC_DATA_PRESENT = 32;
    public static final int MASK_V24_DATA_LENGTH_INDICATOR = 2;
    public static final int MASK_V24_ENCRYPTION = 8;
    public static final int MASK_V24_EXPERIMENTAL = 32;
    public static final int MASK_V24_EXTENDED_HEADER = 64;
    public static final int MASK_V24_FILE_ALTER_PRESERVATION = 32;
    public static final int MASK_V24_FOOTER_PRESENT = 16;
    public static final int MASK_V24_FRAME_UNSYNCHRONIZATION = 4;
    public static final int MASK_V24_GROUPING_IDENTITY = 64;
    public static final int MASK_V24_IMAGE_ENCODING = 4;
    public static final int MASK_V24_IMAGE_SIZE_RESTRICTIONS = 6;
    public static final int MASK_V24_READ_ONLY = 16;
    public static final int MASK_V24_TAG_ALTER_PRESERVATION = 64;
    public static final int MASK_V24_TAG_RESTRICTIONS = 16;
    public static final int MASK_V24_TAG_SIZE_RESTRICTIONS = -64;
    public static final int MASK_V24_TAG_UPDATE = 64;
    public static final int MASK_V24_TEXT_ENCODING_RESTRICTIONS = 32;
    public static final int MASK_V24_TEXT_FIELD_SIZE_RESTRICTIONS = 24;
    public static final int MASK_V24_UNSYNCHRONIZATION = 128;
    public static final byte RELEASE = 2;
    public static final byte REVISION = 0;
    protected static int TAG_EXT_HEADER_CRC_DATA_LENGTH = 5;
    protected static int TAG_EXT_HEADER_CRC_LENGTH = 6;
    protected static int TAG_EXT_HEADER_LENGTH = 6;
    protected static int TAG_EXT_HEADER_RESTRICTION_DATA_LENGTH = 1;
    protected static int TAG_EXT_HEADER_RESTRICTION_LENGTH = 2;
    protected static int TAG_EXT_HEADER_UPDATE_LENGTH = 1;
    protected static int TAG_EXT_NUMBER_BYTES_DATA_LENGTH = 1;
    protected static final String TYPE_CRCDATA = "crcdata";
    protected static final String TYPE_EXPERIMENTAL = "experimental";
    protected static final String TYPE_EXTENDED = "extended";
    protected static final String TYPE_FOOTER = "footer";
    protected static final String TYPE_IMAGEENCODINGRESTRICTION = "imageEncodingRestriction";
    protected static final String TYPE_IMAGESIZERESTRICTION = "imageSizeRestriction";
    protected static final String TYPE_PADDINGSIZE = "paddingsize";
    protected static final String TYPE_TAGRESTRICTION = "tagRestriction";
    protected static final String TYPE_TAGSIZERESTRICTION = "tagSizeRestriction";
    protected static final String TYPE_TEXTENCODINGRESTRICTION = "textEncodingRestriction";
    protected static final String TYPE_TEXTFIELDSIZERESTRICTION = "textFieldSizeRestriction";
    protected static final String TYPE_UNSYNCHRONISATION = "unsyncronisation";
    protected static final String TYPE_UPDATETAG = "updateTag";
    protected int crcData;
    protected boolean crcDataFlag;
    protected boolean experimental;
    protected boolean extended;
    protected boolean footer;
    protected byte imageEncodingRestriction;
    protected byte imageSizeRestriction;
    protected int paddingSize;
    protected boolean tagRestriction;
    protected byte tagSizeRestriction;
    protected byte textEncodingRestriction;
    protected byte textFieldSizeRestriction;
    protected boolean unsynchronization;
    protected boolean updateTag;

    public ID3v24Tag() {
        this.crcDataFlag = false;
        this.experimental = false;
        this.extended = false;
        this.unsynchronization = false;
        this.crcData = 0;
        this.footer = false;
        this.updateTag = false;
        this.tagRestriction = false;
        this.imageEncodingRestriction = (byte) 0;
        this.imageSizeRestriction = (byte) 0;
        this.tagSizeRestriction = (byte) 0;
        this.textEncodingRestriction = (byte) 0;
        this.paddingSize = 0;
        this.textFieldSizeRestriction = (byte) 0;
        this.frameMap = new LinkedHashMap();
        this.encryptedFrameMap = new LinkedHashMap();
    }

    private void readExtendedHeader(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        int i2 = byteBuffer.getInt();
        if (i2 <= TAG_EXT_HEADER_LENGTH) {
            throw new InvalidTagException(ErrorMessage.ID3_EXTENDED_HEADER_SIZE_TOO_SMALL.getMsg(getLoggingFilename(), Integer.valueOf(i2)));
        }
        byteBuffer.get();
        byte b = byteBuffer.get();
        boolean z = (b & 64) != 0;
        this.updateTag = z;
        this.crcDataFlag = (b & 32) != 0;
        this.tagRestriction = (b & 16) != 0;
        if (z) {
            byteBuffer.get();
        }
        if (this.crcDataFlag) {
            byteBuffer.get();
            int i3 = TAG_EXT_HEADER_CRC_DATA_LENGTH;
            byte[] bArr = new byte[i3];
            byteBuffer.get(bArr, 0, i3);
            this.crcData = 0;
            for (int i4 = 0; i4 < TAG_EXT_HEADER_CRC_DATA_LENGTH; i4++) {
                int i5 = this.crcData << 8;
                this.crcData = i5;
                this.crcData = i5 + bArr[i4];
            }
        }
        if (this.tagRestriction) {
            byteBuffer.get();
            byte[] bArr2 = new byte[1];
            byteBuffer.get(bArr2, 0, 1);
            byte b2 = bArr2[0];
            this.tagSizeRestriction = (byte) ((b2 & (-64)) >> 6);
            this.textEncodingRestriction = (byte) ((b2 & 32) >> 5);
            this.textFieldSizeRestriction = (byte) ((b2 & 24) >> 3);
            this.imageEncodingRestriction = (byte) ((b2 & 4) >> 2);
            this.imageSizeRestriction = (byte) (b2 & 6);
        }
    }

    private void readHeaderFlags(ByteBuffer byteBuffer) throws TagException {
        byte b = byteBuffer.get();
        this.unsynchronization = (b & SocketData.CLAZZ_TYPE_END_SOCKET) != 0;
        this.extended = (b & 64) != 0;
        this.experimental = (b & 32) != 0;
        this.footer = (b & 16) != 0;
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
        if (this.footer) {
            AbstractID3Tag.logger.warning(ErrorMessage.ID3_TAG_FOOTER.getMsg(getLoggingFilename()));
        }
    }

    private ByteBuffer writeHeaderToBuffer(int i, int i2) throws IOException {
        int i3;
        ByteBuffer byteBufferAllocate;
        this.unsynchronization = false;
        this.extended = false;
        this.experimental = false;
        this.footer = false;
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(10);
        byteBufferAllocate2.put(AbstractID3v2Tag.TAG_ID);
        byteBufferAllocate2.put(getMajorVersion());
        byteBufferAllocate2.put(getRevision());
        byte b = isUnsynchronization() ? (byte) 128 : (byte) 0;
        if (this.extended) {
            b = (byte) (b | 64);
        }
        if (this.experimental) {
            b = (byte) (b | 32);
        }
        if (this.footer) {
            b = (byte) (b | 16);
        }
        byteBufferAllocate2.put(b);
        if (this.extended) {
            i3 = TAG_EXT_HEADER_LENGTH;
            if (this.updateTag) {
                i3 += TAG_EXT_HEADER_UPDATE_LENGTH;
            }
            if (this.crcDataFlag) {
                i3 += TAG_EXT_HEADER_CRC_LENGTH;
            }
            if (this.tagRestriction) {
                i3 += TAG_EXT_HEADER_RESTRICTION_LENGTH;
            }
        } else {
            i3 = 0;
        }
        byteBufferAllocate2.put(ID3SyncSafeInteger.valueToBuffer(i + i2 + i3));
        if (this.extended) {
            int i4 = TAG_EXT_HEADER_LENGTH;
            if (this.updateTag) {
                i4 += TAG_EXT_HEADER_UPDATE_LENGTH;
            }
            if (this.crcDataFlag) {
                i4 += TAG_EXT_HEADER_CRC_LENGTH;
            }
            if (this.tagRestriction) {
                i4 += TAG_EXT_HEADER_RESTRICTION_LENGTH;
            }
            byteBufferAllocate = ByteBuffer.allocate(i4);
            byteBufferAllocate.putInt(i4);
            byteBufferAllocate.put((byte) TAG_EXT_NUMBER_BYTES_DATA_LENGTH);
            byte b2 = this.updateTag ? (byte) 64 : (byte) 0;
            if (this.crcDataFlag) {
                b2 = (byte) (b2 | 32);
            }
            if (this.tagRestriction) {
                b2 = (byte) (b2 | 16);
            }
            byteBufferAllocate.put(b2);
            if (this.updateTag) {
                byteBufferAllocate.put((byte) 0);
            }
            if (this.crcDataFlag) {
                byteBufferAllocate.put((byte) TAG_EXT_HEADER_CRC_DATA_LENGTH);
                byteBufferAllocate.put((byte) 0);
                byteBufferAllocate.putInt(this.crcData);
            }
            if (this.tagRestriction) {
                byteBufferAllocate.put((byte) TAG_EXT_HEADER_RESTRICTION_DATA_LENGTH);
                byteBufferAllocate.put((byte) 0);
            }
        } else {
            byteBufferAllocate = null;
        }
        if (byteBufferAllocate != null) {
            byteBufferAllocate.flip();
            byteBufferAllocate2.put(byteBufferAllocate);
        }
        byteBufferAllocate2.flip();
        return byteBufferAllocate2;
    }

    @Override
    public void addFrame(AbstractID3v2Frame abstractID3v2Frame) {
        try {
            if (abstractID3v2Frame instanceof ID3v24Frame) {
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
        if ((abstractID3v2Frame instanceof ID3v22Frame) && abstractID3v2Frame.getIdentifier().equals(ID3v22Frames.FRAME_ID_V2_IPLS)) {
            abstractID3v2Frame = new ID3v23Frame(abstractID3v2Frame);
        }
        if ((abstractID3v2Frame instanceof ID3v23Frame) && abstractID3v2Frame.getIdentifier().equals(ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE)) {
            List<Pair> mapping = ((FrameBodyIPLS) abstractID3v2Frame.getBody()).getPairing().getMapping();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (Pair pair : mapping) {
                if (StandardIPLSKey.isKey(pair.getKey())) {
                    arrayList2.add(pair);
                } else if (MusicianCredits.isKey(pair.getKey())) {
                    arrayList3.add(pair);
                } else {
                    arrayList2.add(pair);
                }
            }
            ID3v23Frame iD3v23Frame = (ID3v23Frame) abstractID3v2Frame;
            ID3v24Frame iD3v24Frame = new ID3v24Frame(iD3v23Frame, ID3v24Frames.FRAME_ID_INVOLVED_PEOPLE);
            iD3v24Frame.setBody(new FrameBodyTIPL(abstractID3v2Frame.getBody().getTextEncoding(), arrayList2));
            arrayList.add(iD3v24Frame);
            ID3v24Frame iD3v24Frame2 = new ID3v24Frame(iD3v23Frame, ID3v24Frames.FRAME_ID_MUSICIAN_CREDITS);
            iD3v24Frame2.setBody(new FrameBodyTMCL(abstractID3v2Frame.getBody().getTextEncoding(), arrayList3));
            arrayList.add(iD3v24Frame2);
        } else {
            arrayList.add(new ID3v24Frame(abstractID3v2Frame));
        }
        return arrayList;
    }

    @Override
    public void copyPrimitives(AbstractID3v2Tag abstractID3v2Tag) {
        AbstractID3Tag.logger.config("Copying primitives");
        super.copyPrimitives(abstractID3v2Tag);
        if (abstractID3v2Tag instanceof ID3v24Tag) {
            ID3v24Tag iD3v24Tag = (ID3v24Tag) abstractID3v2Tag;
            this.footer = iD3v24Tag.footer;
            this.tagRestriction = iD3v24Tag.tagRestriction;
            this.updateTag = iD3v24Tag.updateTag;
            this.imageEncodingRestriction = iD3v24Tag.imageEncodingRestriction;
            this.imageSizeRestriction = iD3v24Tag.imageSizeRestriction;
            this.tagSizeRestriction = iD3v24Tag.tagSizeRestriction;
            this.textEncodingRestriction = iD3v24Tag.textEncodingRestriction;
            this.textFieldSizeRestriction = iD3v24Tag.textFieldSizeRestriction;
        }
    }

    public TagField createArtworkField(byte[] bArr, String str) {
        ID3v24Frame iD3v24FrameCreateFrame = createFrame(getFrameAndSubIdFromGenericKey(FieldKey.COVER_ART).getFrameId());
        FrameBodyAPIC frameBodyAPIC = (FrameBodyAPIC) iD3v24FrameCreateFrame.getBody();
        frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_DATA, bArr);
        frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_TYPE, PictureTypes.DEFAULT_ID);
        frameBodyAPIC.setObjectValue(DataTypes.OBJ_MIME_TYPE, str);
        frameBodyAPIC.setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
        return iD3v24FrameCreateFrame;
    }

    public TagField createField(ID3v24FieldKey iD3v24FieldKey, String str) throws FieldDataInvalidException, KeyNotFoundException {
        if (iD3v24FieldKey != null) {
            return super.doCreateTagField(new AbstractID3v2Tag.FrameAndSubId(null, iD3v24FieldKey.getFrameId(), iD3v24FieldKey.getSubId()), str);
        }
        throw new KeyNotFoundException();
    }

    @Override
    public void createStructure() {
        MP3File.getStructureFormatter().openHeadingElement(Progress.TAG, getIdentifier());
        super.createStructureHeader();
        MP3File.getStructureFormatter().openHeadingElement("header", "");
        MP3File.getStructureFormatter().addElement(TYPE_UNSYNCHRONISATION, isUnsynchronization());
        MP3File.getStructureFormatter().addElement(TYPE_CRCDATA, this.crcData);
        MP3File.getStructureFormatter().addElement(TYPE_EXPERIMENTAL, this.experimental);
        MP3File.getStructureFormatter().addElement(TYPE_EXTENDED, this.extended);
        MP3File.getStructureFormatter().addElement(TYPE_PADDINGSIZE, this.paddingSize);
        MP3File.getStructureFormatter().addElement(TYPE_FOOTER, this.footer);
        MP3File.getStructureFormatter().addElement(TYPE_IMAGEENCODINGRESTRICTION, this.paddingSize);
        MP3File.getStructureFormatter().addElement(TYPE_IMAGESIZERESTRICTION, this.imageSizeRestriction);
        MP3File.getStructureFormatter().addElement(TYPE_TAGRESTRICTION, this.tagRestriction);
        MP3File.getStructureFormatter().addElement(TYPE_TAGSIZERESTRICTION, this.tagSizeRestriction);
        MP3File.getStructureFormatter().addElement(TYPE_TEXTFIELDSIZERESTRICTION, this.textFieldSizeRestriction);
        MP3File.getStructureFormatter().addElement(TYPE_TEXTENCODINGRESTRICTION, this.textEncodingRestriction);
        MP3File.getStructureFormatter().addElement(TYPE_UPDATETAG, this.updateTag);
        MP3File.getStructureFormatter().closeHeadingElement("header");
        super.createStructureBody();
        MP3File.getStructureFormatter().closeHeadingElement(Progress.TAG);
    }

    public void deleteField(ID3v24FieldKey iD3v24FieldKey) throws KeyNotFoundException {
        if (iD3v24FieldKey == null) {
            throw new KeyNotFoundException();
        }
        super.doDeleteTagField(new AbstractID3v2Tag.FrameAndSubId(null, iD3v24FieldKey.getFrameId(), iD3v24FieldKey.getSubId()));
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof ID3v24Tag)) {
            return false;
        }
        ID3v24Tag iD3v24Tag = (ID3v24Tag) obj;
        return this.footer == iD3v24Tag.footer && this.imageEncodingRestriction == iD3v24Tag.imageEncodingRestriction && this.imageSizeRestriction == iD3v24Tag.imageSizeRestriction && this.tagRestriction == iD3v24Tag.tagRestriction && this.tagSizeRestriction == iD3v24Tag.tagSizeRestriction && this.textEncodingRestriction == iD3v24Tag.textEncodingRestriction && this.textFieldSizeRestriction == iD3v24Tag.textFieldSizeRestriction && this.updateTag == iD3v24Tag.updateTag && super.equals(obj);
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
                arrayList.add(FrameBodyTCON.convertID3v24GenreToGeneric(it.next()));
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

    public String getFirst(ID3v24FieldKey iD3v24FieldKey) throws KeyNotFoundException {
        if (iD3v24FieldKey == null) {
            throw new KeyNotFoundException();
        }
        FieldKey genericKeyFromId3 = ID3v24Frames.getInstanceOf().getGenericKeyFromId3(iD3v24FieldKey);
        return genericKeyFromId3 != null ? super.getFirst(genericKeyFromId3) : super.doGetValueAtIndex(new AbstractID3v2Tag.FrameAndSubId(null, iD3v24FieldKey.getFrameId(), iD3v24FieldKey.getSubId()), 0);
    }

    @Override
    public AbstractID3v2Tag.FrameAndSubId getFrameAndSubIdFromGenericKey(FieldKey fieldKey) {
        if (fieldKey == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        ID3v24FieldKey id3KeyFromGenericKey = ID3v24Frames.getInstanceOf().getId3KeyFromGenericKey(fieldKey);
        if (id3KeyFromGenericKey != null) {
            return new AbstractID3v2Tag.FrameAndSubId(fieldKey, id3KeyFromGenericKey.getFrameId(), id3KeyFromGenericKey.getSubId());
        }
        throw new KeyNotFoundException(fieldKey.name());
    }

    @Override
    public ID3Frames getID3Frames() {
        return ID3v24Frames.getInstanceOf();
    }

    @Override
    public String getIdentifier() {
        return "ID3v2.40";
    }

    @Override
    public byte getMajorVersion() {
        return (byte) 4;
    }

    @Override
    public Comparator getPreferredFrameOrderComparator() {
        return ID3v24PreferredFrameOrderComparator.getInstanceof();
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
            int i2 = TAG_EXT_HEADER_LENGTH + 10;
            if (this.updateTag) {
                i2 += TAG_EXT_HEADER_UPDATE_LENGTH;
            }
            if (this.crcDataFlag) {
                i2 += TAG_EXT_HEADER_CRC_LENGTH;
            }
            i = i2;
            if (this.tagRestriction) {
                i += TAG_EXT_HEADER_RESTRICTION_LENGTH;
            }
        }
        int size = i + super.getSize();
        AbstractID3Tag.logger.finer("Tag Size is" + size);
        return size;
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
        return (fields == null || fields.size() <= 0) ? "" : FrameBodyTCON.convertID3v24GenreToGeneric(((FrameBodyTCON) ((AbstractID3v2Frame) fields.get(0)).getBody()).getValues().get(i));
    }

    public boolean isUnsynchronization() {
        return this.unsynchronization;
    }

    @Override
    public void processDuplicateFrame(AbstractID3v2Frame abstractID3v2Frame, AbstractID3v2Frame abstractID3v2Frame2) {
        if (!(abstractID3v2Frame.getBody() instanceof FrameBodyTDRC)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(abstractID3v2Frame2);
            arrayList.add(abstractID3v2Frame);
            this.frameMap.put(abstractID3v2Frame.getIdentifier(), arrayList);
            return;
        }
        if (!(abstractID3v2Frame2.getBody() instanceof FrameBodyTDRC)) {
            if (abstractID3v2Frame2.getBody() instanceof FrameBodyUnsupported) {
                this.frameMap.put(abstractID3v2Frame.getIdentifier(), abstractID3v2Frame);
                return;
            }
            AbstractID3Tag.logger.warning("Found duplicate TDRC frame in invalid situation,discarding:" + abstractID3v2Frame.getIdentifier());
            return;
        }
        FrameBodyTDRC frameBodyTDRC = (FrameBodyTDRC) abstractID3v2Frame2.getBody();
        FrameBodyTDRC frameBodyTDRC2 = (FrameBodyTDRC) abstractID3v2Frame.getBody();
        if (frameBodyTDRC2.getOriginalID() == null) {
            return;
        }
        if (frameBodyTDRC2.getOriginalID().equals(ID3v23Frames.FRAME_ID_V3_TYER)) {
            frameBodyTDRC.setYear(frameBodyTDRC2.getYear());
        } else if (frameBodyTDRC2.getOriginalID().equals(ID3v23Frames.FRAME_ID_V3_TDAT)) {
            frameBodyTDRC.setDate(frameBodyTDRC2.getDate());
            frameBodyTDRC.setMonthOnly(frameBodyTDRC2.isMonthOnly());
        } else if (frameBodyTDRC2.getOriginalID().equals(ID3v23Frames.FRAME_ID_V3_TIME)) {
            frameBodyTDRC.setTime(frameBodyTDRC2.getTime());
            frameBodyTDRC.setHoursOnly(frameBodyTDRC2.isHoursOnly());
        }
        frameBodyTDRC.setObjectValue(DataTypes.OBJ_TEXT, frameBodyTDRC.getFormattedText());
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws TagException {
        if (!seek(byteBuffer)) {
            throw new TagNotFoundException(getLoggingFilename() + StringUtils.PROCESS_POSTFIX_DELIMITER + getIdentifier() + " tag not found");
        }
        AbstractID3Tag.logger.config(getLoggingFilename() + ":Reading ID3v24 tag");
        readHeaderFlags(byteBuffer);
        int iBufferToValue = ID3SyncSafeInteger.bufferToValue(byteBuffer);
        AbstractID3Tag.logger.config(getLoggingFilename() + ":Reading tag from file size set in header is" + iBufferToValue);
        if (this.extended) {
            readExtendedHeader(byteBuffer, iBufferToValue);
        }
        readFrames(byteBuffer, iBufferToValue);
    }

    public void readFrames(ByteBuffer byteBuffer, int i) {
        AbstractID3Tag.logger.finest(getLoggingFilename() + ":Start of frame body at" + byteBuffer.position());
        this.frameMap = new LinkedHashMap();
        this.encryptedFrameMap = new LinkedHashMap();
        this.fileReadSize = i;
        AbstractID3Tag.logger.finest(getLoggingFilename() + ":Start of frame body at:" + byteBuffer.position() + ",frames data size is:" + i);
        while (byteBuffer.position() <= i) {
            try {
                AbstractID3Tag.logger.finest(getLoggingFilename() + ":looking for next frame at:" + byteBuffer.position());
                ID3v24Frame iD3v24Frame = new ID3v24Frame(byteBuffer, getLoggingFilename());
                loadFrameIntoMap(iD3v24Frame.getIdentifier(), iD3v24Frame);
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

    @Override
    public long write(File file, long j) throws Throwable {
        setLoggingFilename(file.getName());
        AbstractID3Tag.logger.config("Writing tag to file:" + getLoggingFilename());
        byte[] byteArray = writeFramesToBuffer().toByteArray();
        int iCalculateTagSize = calculateTagSize(byteArray.length + 10, (int) j);
        int length = iCalculateTagSize - (byteArray.length + 10);
        writeBufferToFile(file, writeHeaderToBuffer(length, byteArray.length), byteArray, length, iCalculateTagSize, j);
        return iCalculateTagSize;
    }

    @Override
    public ID3v24Frame createFrame(String str) {
        return new ID3v24Frame(str);
    }

    @Override
    public TagField createField(Artwork artwork) throws FieldDataInvalidException {
        ID3v24Frame iD3v24FrameCreateFrame = createFrame(getFrameAndSubIdFromGenericKey(FieldKey.COVER_ART).getFrameId());
        FrameBodyAPIC frameBodyAPIC = (FrameBodyAPIC) iD3v24FrameCreateFrame.getBody();
        if (!artwork.isLinked()) {
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_DATA, artwork.getBinaryData());
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_TYPE, Integer.valueOf(artwork.getPictureType()));
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_MIME_TYPE, artwork.getMimeType());
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
            return iD3v24FrameCreateFrame;
        }
        try {
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_DATA, artwork.getImageUrl().getBytes(CharEncoding.ISO_8859_1));
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_TYPE, Integer.valueOf(artwork.getPictureType()));
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_MIME_TYPE, "-->");
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
            return iD3v24FrameCreateFrame;
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    @Override
    public void deleteField(String str) {
        super.doDeleteTagField(new AbstractID3v2Tag.FrameAndSubId(null, str, null));
    }

    @Override
    public void write(WritableByteChannel writableByteChannel, int i) throws IOException {
        AbstractID3Tag.logger.severe("Writing tag to channel");
        byte[] byteArray = writeFramesToBuffer().toByteArray();
        int iCalculateTagSize = i > 0 ? calculateTagSize(byteArray.length + 10, i) - (byteArray.length + 10) : 0;
        writableByteChannel.write(writeHeaderToBuffer(iCalculateTagSize, byteArray.length));
        writableByteChannel.write(ByteBuffer.wrap(byteArray));
        writePadding(writableByteChannel, iCalculateTagSize);
    }

    @Override
    public TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        if (fieldKey != null) {
            if (fieldKey != FieldKey.GENRE) {
                return super.createField(fieldKey, strArr);
            }
            if (strArr != null) {
                String str = strArr[0];
                if (str != null) {
                    ID3v24Frame iD3v24FrameCreateFrame = createFrame(getFrameAndSubIdFromGenericKey(fieldKey).getFrameId());
                    FrameBodyTCON frameBodyTCON = (FrameBodyTCON) iD3v24FrameCreateFrame.getBody();
                    if (TagOptionSingleton.getInstance().isWriteMp3GenresAsText()) {
                        frameBodyTCON.setText(str);
                    } else {
                        frameBodyTCON.setText(FrameBodyTCON.convertGenericToID3v24Genre(str));
                    }
                    return iD3v24FrameCreateFrame;
                }
                throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
            }
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        throw new KeyNotFoundException();
    }

    public ID3v24Tag(ID3v24Tag iD3v24Tag) {
        this.crcDataFlag = false;
        this.experimental = false;
        this.extended = false;
        this.unsynchronization = false;
        this.crcData = 0;
        this.footer = false;
        this.updateTag = false;
        this.tagRestriction = false;
        this.imageEncodingRestriction = (byte) 0;
        this.imageSizeRestriction = (byte) 0;
        this.tagSizeRestriction = (byte) 0;
        this.textEncodingRestriction = (byte) 0;
        this.paddingSize = 0;
        this.textFieldSizeRestriction = (byte) 0;
        AbstractID3Tag.logger.config("Creating tag from another tag of same type");
        copyPrimitives(iD3v24Tag);
        copyFrames(iD3v24Tag);
    }

    public ID3v24Tag(AbstractTag abstractTag) {
        Lyrics3v2 lyrics3v2;
        byte b;
        this.crcDataFlag = false;
        this.experimental = false;
        this.extended = false;
        this.unsynchronization = false;
        this.crcData = 0;
        this.footer = false;
        this.updateTag = false;
        this.tagRestriction = false;
        this.imageEncodingRestriction = (byte) 0;
        this.imageSizeRestriction = (byte) 0;
        this.tagSizeRestriction = (byte) 0;
        this.textEncodingRestriction = (byte) 0;
        this.paddingSize = 0;
        this.textFieldSizeRestriction = (byte) 0;
        AbstractID3Tag.logger.config("Creating tag from a tag of a different version");
        this.frameMap = new LinkedHashMap();
        this.encryptedFrameMap = new LinkedHashMap();
        if (abstractTag != null) {
            if (!(abstractTag instanceof ID3v24Tag)) {
                if (abstractTag instanceof AbstractID3v2Tag) {
                    AbstractID3v2Tag abstractID3v2Tag = (AbstractID3v2Tag) abstractTag;
                    setLoggingFilename(abstractID3v2Tag.getLoggingFilename());
                    copyPrimitives(abstractID3v2Tag);
                    copyFrames(abstractID3v2Tag);
                    return;
                }
                if (abstractTag instanceof ID3v1Tag) {
                    ID3v1Tag iD3v1Tag = (ID3v1Tag) abstractTag;
                    if (iD3v1Tag.title.length() > 0) {
                        FrameBodyTIT2 frameBodyTIT2 = new FrameBodyTIT2((byte) 0, iD3v1Tag.title);
                        ID3v24Frame iD3v24Frame = new ID3v24Frame("TIT2");
                        iD3v24Frame.setBody(frameBodyTIT2);
                        this.frameMap.put(iD3v24Frame.getIdentifier(), iD3v24Frame);
                    }
                    if (iD3v1Tag.artist.length() > 0) {
                        FrameBodyTPE1 frameBodyTPE1 = new FrameBodyTPE1((byte) 0, iD3v1Tag.artist);
                        ID3v24Frame iD3v24Frame2 = new ID3v24Frame("TPE1");
                        iD3v24Frame2.setBody(frameBodyTPE1);
                        this.frameMap.put(iD3v24Frame2.getIdentifier(), iD3v24Frame2);
                    }
                    if (iD3v1Tag.album.length() > 0) {
                        FrameBodyTALB frameBodyTALB = new FrameBodyTALB((byte) 0, iD3v1Tag.album);
                        ID3v24Frame iD3v24Frame3 = new ID3v24Frame("TALB");
                        iD3v24Frame3.setBody(frameBodyTALB);
                        this.frameMap.put(iD3v24Frame3.getIdentifier(), iD3v24Frame3);
                    }
                    if (iD3v1Tag.year.length() > 0) {
                        FrameBodyTDRC frameBodyTDRC = new FrameBodyTDRC((byte) 0, iD3v1Tag.year);
                        ID3v24Frame iD3v24Frame4 = new ID3v24Frame(ID3v24Frames.FRAME_ID_YEAR);
                        iD3v24Frame4.setBody(frameBodyTDRC);
                        this.frameMap.put(iD3v24Frame4.getIdentifier(), iD3v24Frame4);
                    }
                    if (iD3v1Tag.comment.length() > 0) {
                        FrameBodyCOMM frameBodyCOMM = new FrameBodyCOMM((byte) 0, "ENG", "", iD3v1Tag.comment);
                        ID3v24Frame iD3v24Frame5 = new ID3v24Frame("COMM");
                        iD3v24Frame5.setBody(frameBodyCOMM);
                        this.frameMap.put(iD3v24Frame5.getIdentifier(), iD3v24Frame5);
                    }
                    byte b2 = iD3v1Tag.genre;
                    if ((b2 & 255) >= 0 && (b2 & 255) != 255) {
                        int i = b2 & 255;
                        FrameBodyTCON frameBodyTCON = new FrameBodyTCON((byte) 0, "(" + Integer.valueOf(i) + ") " + GenreTypes.getInstanceOf().getValueForId(i));
                        ID3v24Frame iD3v24Frame6 = new ID3v24Frame("TCON");
                        iD3v24Frame6.setBody(frameBodyTCON);
                        this.frameMap.put(iD3v24Frame6.getIdentifier(), iD3v24Frame6);
                    }
                    if (!(abstractTag instanceof ID3v11Tag) || (b = ((ID3v11Tag) abstractTag).track) <= 0) {
                        return;
                    }
                    FrameBodyTRCK frameBodyTRCK = new FrameBodyTRCK((byte) 0, Byte.toString(b));
                    ID3v24Frame iD3v24Frame7 = new ID3v24Frame("TRCK");
                    iD3v24Frame7.setBody(frameBodyTRCK);
                    this.frameMap.put(iD3v24Frame7.getIdentifier(), iD3v24Frame7);
                    return;
                }
                if (abstractTag instanceof AbstractLyrics3) {
                    if (abstractTag instanceof Lyrics3v2) {
                        lyrics3v2 = new Lyrics3v2((Lyrics3v2) abstractTag);
                    } else {
                        lyrics3v2 = new Lyrics3v2(abstractTag);
                    }
                    Iterator<Lyrics3v2Field> it = lyrics3v2.iterator();
                    while (it.hasNext()) {
                        try {
                            ID3v24Frame iD3v24Frame8 = new ID3v24Frame(it.next());
                            this.frameMap.put(iD3v24Frame8.getIdentifier(), iD3v24Frame8);
                        } catch (InvalidTagException unused) {
                            AbstractID3Tag.logger.warning("Unable to convert Lyrics3 to v24 Frame:Frame Identifier");
                        }
                    }
                    return;
                }
                return;
            }
            throw new UnsupportedOperationException("Copy Constructor not called. Please type cast the argument");
        }
    }

    public ID3v24Tag(ByteBuffer byteBuffer, String str) throws TagException {
        this.crcDataFlag = false;
        this.experimental = false;
        this.extended = false;
        this.unsynchronization = false;
        this.crcData = 0;
        this.footer = false;
        this.updateTag = false;
        this.tagRestriction = false;
        this.imageEncodingRestriction = (byte) 0;
        this.imageSizeRestriction = (byte) 0;
        this.tagSizeRestriction = (byte) 0;
        this.textEncodingRestriction = (byte) 0;
        this.paddingSize = 0;
        this.textFieldSizeRestriction = (byte) 0;
        this.frameMap = new LinkedHashMap();
        this.encryptedFrameMap = new LinkedHashMap();
        setLoggingFilename(str);
        read(byteBuffer);
    }

    public ID3v24Tag(ByteBuffer byteBuffer) throws TagException {
        this(byteBuffer, "");
    }
}
