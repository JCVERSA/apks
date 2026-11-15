package com.transsion.audiotagger.tag.id3;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.mp3.MP3File;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.logging.Hex;
import com.transsion.audiotagger.tag.EmptyFrameException;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.InvalidFrameException;
import com.transsion.audiotagger.tag.InvalidFrameIdentifierException;
import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.datatype.Lyrics3Line;
import com.transsion.audiotagger.tag.id3.framebody.AbstractID3v2FrameBody;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyCOMM;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyDeprecated;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodySYLT;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTALB;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTCOM;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTIT2;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTMOO;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTPE1;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTXXX;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUSLT;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUnsupported;
import com.transsion.audiotagger.tag.id3.framebody.ID3v24FrameBody;
import com.transsion.audiotagger.tag.id3.valuepair.TextEncoding;
import com.transsion.audiotagger.tag.lyrics3.FieldFrameBodyAUT;
import com.transsion.audiotagger.tag.lyrics3.FieldFrameBodyEAL;
import com.transsion.audiotagger.tag.lyrics3.FieldFrameBodyEAR;
import com.transsion.audiotagger.tag.lyrics3.FieldFrameBodyETT;
import com.transsion.audiotagger.tag.lyrics3.FieldFrameBodyINF;
import com.transsion.audiotagger.tag.lyrics3.FieldFrameBodyLYR;
import com.transsion.audiotagger.tag.lyrics3.Lyrics3v2Field;
import com.transsion.audiotagger.tag.lyrics3.Lyrics3v2Fields;
import com.transsion.audiotagger.utils.EqualsUtil;
import com.transsion.socket.pkgdata.SocketData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.regex.Pattern;

public class ID3v24Frame extends AbstractID3v2Frame {
    protected static final int FRAME_DATA_LENGTH_SIZE = 4;
    protected static final int FRAME_ENCRYPTION_INDICATOR_SIZE = 1;
    protected static final int FRAME_FLAGS_SIZE = 2;
    protected static final int FRAME_GROUPING_INDICATOR_SIZE = 1;
    protected static final int FRAME_HEADER_SIZE = 10;
    protected static final int FRAME_ID_SIZE = 4;
    protected static final int FRAME_SIZE_SIZE = 4;
    private static Pattern validFrameIdentifier = Pattern.compile("[A-Z][0-9A-Z]{3}");
    private int encryptionMethod;
    private int groupIdentifier;

    public ID3v24Frame() {
    }

    private void checkIfFrameSizeThatIsNotSyncSafe(ByteBuffer byteBuffer) throws InvalidFrameException {
        if (this.frameSize > 127) {
            int iPosition = byteBuffer.position();
            byteBuffer.position(iPosition - getFrameIdSize());
            int i = byteBuffer.getInt();
            byteBuffer.position(iPosition - getFrameIdSize());
            boolean zIsBufferNotSyncSafe = ID3SyncSafeInteger.isBufferNotSyncSafe(byteBuffer);
            byteBuffer.position(iPosition);
            if (zIsBufferNotSyncSafe) {
                AbstractTagItem.logger.warning(getLoggingFilename() + ":Frame size is NOT stored as a sync safe integer:" + this.identifier);
                if (i <= byteBuffer.remaining() - (-getFrameFlagsSize())) {
                    this.frameSize = i;
                    return;
                }
                AbstractTagItem.logger.warning(getLoggingFilename() + ":Invalid Frame size larger than size before mp3 audio:" + this.identifier);
                throw new InvalidFrameException(this.identifier + " is invalid frame");
            }
            byte[] bArr = new byte[getFrameIdSize()];
            byteBuffer.position(this.frameSize + iPosition + getFrameFlagsSize());
            if (byteBuffer.remaining() < getFrameIdSize()) {
                byteBuffer.position(iPosition);
                return;
            }
            byteBuffer.get(bArr, 0, getFrameIdSize());
            byteBuffer.position(iPosition);
            if (isValidID3v2FrameIdentifier(new String(bArr)) || ID3SyncSafeInteger.isBufferEmpty(bArr)) {
                return;
            }
            if (i > byteBuffer.remaining() - getFrameFlagsSize()) {
                byteBuffer.position(iPosition);
                return;
            }
            byte[] bArr2 = new byte[getFrameIdSize()];
            byteBuffer.position(iPosition + i + getFrameFlagsSize());
            if (byteBuffer.remaining() < getFrameIdSize()) {
                byteBuffer.position(iPosition);
                if (byteBuffer.remaining() == 0) {
                    this.frameSize = i;
                    return;
                }
                return;
            }
            byteBuffer.get(bArr2, 0, getFrameIdSize());
            String str = new String(bArr2);
            byteBuffer.position(iPosition);
            if (isValidID3v2FrameIdentifier(str)) {
                this.frameSize = i;
                AbstractTagItem.logger.warning(getLoggingFilename() + ":Assuming frame size is NOT stored as a sync safe integer:" + this.identifier);
                return;
            }
            if (ID3SyncSafeInteger.isBufferEmpty(bArr2)) {
                this.frameSize = i;
                AbstractTagItem.logger.warning(getLoggingFilename() + ":Assuming frame size is NOT stored as a sync safe integer:" + this.identifier);
            }
        }
    }

    private void createV24FrameFromV23Frame(ID3v23Frame iD3v23Frame) throws InvalidFrameException {
        this.identifier = ID3Tags.convertFrameID23To24(iD3v23Frame.getIdentifier());
        AbstractTagItem.logger.finer("Creating V24frame from v23:" + iD3v23Frame.getIdentifier() + StringUtils.PROCESS_POSTFIX_DELIMITER + this.identifier);
        if (iD3v23Frame.getBody() instanceof FrameBodyUnsupported) {
            FrameBodyUnsupported frameBodyUnsupported = new FrameBodyUnsupported((FrameBodyUnsupported) iD3v23Frame.getBody());
            this.frameBody = frameBodyUnsupported;
            frameBodyUnsupported.setHeader(this);
            this.identifier = iD3v23Frame.getIdentifier();
            AbstractTagItem.logger.finer("V3:UnsupportedBody:Orig id is:" + iD3v23Frame.getIdentifier() + ":New id is:" + this.identifier);
            return;
        }
        if (this.identifier != null) {
            if (iD3v23Frame.getIdentifier().equals("TXXX") && ((FrameBodyTXXX) iD3v23Frame.getBody()).getDescription().equals(FrameBodyTXXX.MOOD)) {
                FrameBodyTMOO frameBodyTMOO = new FrameBodyTMOO((FrameBodyTXXX) iD3v23Frame.getBody());
                this.frameBody = frameBodyTMOO;
                frameBodyTMOO.setHeader(this);
                this.identifier = this.frameBody.getIdentifier();
                return;
            }
            AbstractTagItem.logger.finer("V3:Orig id is:" + iD3v23Frame.getIdentifier() + ":New id is:" + this.identifier);
            AbstractTagFrameBody abstractTagFrameBody = (AbstractTagFrameBody) ID3Tags.copyObject(iD3v23Frame.getBody());
            this.frameBody = abstractTagFrameBody;
            abstractTagFrameBody.setHeader(this);
            return;
        }
        if (!ID3Tags.isID3v23FrameIdentifier(iD3v23Frame.getIdentifier())) {
            FrameBodyUnsupported frameBodyUnsupported2 = new FrameBodyUnsupported((FrameBodyUnsupported) iD3v23Frame.getBody());
            this.frameBody = frameBodyUnsupported2;
            frameBodyUnsupported2.setHeader(this);
            this.identifier = iD3v23Frame.getIdentifier();
            AbstractTagItem.logger.finer("V3:Unknown:Orig id is:" + iD3v23Frame.getIdentifier() + ":New id is:" + this.identifier);
            return;
        }
        String strForceFrameID23To24 = ID3Tags.forceFrameID23To24(iD3v23Frame.getIdentifier());
        this.identifier = strForceFrameID23To24;
        if (strForceFrameID23To24 != null) {
            AbstractTagItem.logger.config("V3:Orig id is:" + iD3v23Frame.getIdentifier() + ":New id is:" + this.identifier);
            AbstractID3v2FrameBody body = readBody(this.identifier, (AbstractID3v2FrameBody) iD3v23Frame.getBody());
            this.frameBody = body;
            body.setHeader(this);
            return;
        }
        FrameBodyDeprecated frameBodyDeprecated = new FrameBodyDeprecated((AbstractID3v2FrameBody) iD3v23Frame.getBody());
        this.frameBody = frameBodyDeprecated;
        frameBodyDeprecated.setHeader(this);
        this.identifier = iD3v23Frame.getIdentifier();
        AbstractTagItem.logger.finer("V3:Deprecated:Orig id is:" + iD3v23Frame.getIdentifier() + ":New id is:" + this.identifier);
    }

    private void getFrameSize(ByteBuffer byteBuffer) throws InvalidFrameException {
        int iBufferToValue = ID3SyncSafeInteger.bufferToValue(byteBuffer);
        this.frameSize = iBufferToValue;
        if (iBufferToValue < 0) {
            AbstractTagItem.logger.warning(getLoggingFilename() + ":Invalid Frame size:" + this.identifier);
            throw new InvalidFrameException(this.identifier + " is invalid frame");
        }
        if (iBufferToValue == 0) {
            AbstractTagItem.logger.warning(getLoggingFilename() + ":Empty Frame:" + this.identifier);
            byteBuffer.get();
            byteBuffer.get();
            throw new EmptyFrameException(this.identifier + " is empty frame");
        }
        if (iBufferToValue <= byteBuffer.remaining() - 2) {
            checkIfFrameSizeThatIsNotSyncSafe(byteBuffer);
            return;
        }
        AbstractTagItem.logger.warning(getLoggingFilename() + ":Invalid Frame size larger than size before mp3 audio:" + this.identifier);
        throw new InvalidFrameException(this.identifier + " is invalid frame");
    }

    @Override
    public void createStructure() {
        MP3File.getStructureFormatter().openHeadingElement(TypedValues.AttributesType.S_FRAME, getIdentifier());
        MP3File.getStructureFormatter().addElement("frameSize", this.frameSize);
        this.statusFlags.createStructure();
        this.encodingFlags.createStructure();
        this.frameBody.createStructure();
        MP3File.getStructureFormatter().closeHeadingElement(TypedValues.AttributesType.S_FRAME);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ID3v24Frame)) {
            return false;
        }
        ID3v24Frame iD3v24Frame = (ID3v24Frame) obj;
        return EqualsUtil.areEqual(this.statusFlags, iD3v24Frame.statusFlags) && EqualsUtil.areEqual(this.encodingFlags, iD3v24Frame.encodingFlags) && super.equals(iD3v24Frame);
    }

    @Override
    public AbstractID3v2Frame.EncodingFlags getEncodingFlags() {
        return this.encodingFlags;
    }

    public int getEncryptionMethod() {
        return this.encryptionMethod;
    }

    public int getFrameFlagsSize() {
        return 2;
    }

    @Override
    public int getFrameHeaderSize() {
        return 10;
    }

    @Override
    public int getFrameIdSize() {
        return 4;
    }

    @Override
    public int getFrameSizeSize() {
        return 4;
    }

    public int getGroupIdentifier() {
        return this.groupIdentifier;
    }

    @Override
    public int getSize() {
        return this.frameBody.getSize() + 10;
    }

    @Override
    public AbstractID3v2Frame.StatusFlags getStatusFlags() {
        return this.statusFlags;
    }

    @Override
    public boolean isBinary() {
        return ID3v24Frames.getInstanceOf().isBinary(getId());
    }

    @Override
    public boolean isCommon() {
        return ID3v24Frames.getInstanceOf().isCommon(getId());
    }

    public boolean isValidID3v2FrameIdentifier(String str) {
        return validFrameIdentifier.matcher(str).matches();
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws InvalidFrameException, InvalidDataTypeException {
        int iBufferToValue;
        int iLimit;
        String identifier = readIdentifier(byteBuffer);
        int i = 1;
        if (!isValidID3v2FrameIdentifier(identifier)) {
            AbstractTagItem.logger.config(getLoggingFilename() + ":Invalid identifier:" + identifier);
            byteBuffer.position(byteBuffer.position() - (getFrameIdSize() - 1));
            throw new InvalidFrameIdentifierException(getLoggingFilename() + StringUtils.PROCESS_POSTFIX_DELIMITER + identifier + ":is not a valid ID3v2.30 frame");
        }
        getFrameSize(byteBuffer);
        this.statusFlags = new StatusFlags(byteBuffer.get());
        EncodingFlags encodingFlags = new EncodingFlags(byteBuffer.get());
        this.encodingFlags = encodingFlags;
        if (encodingFlags.isGrouping()) {
            this.groupIdentifier = byteBuffer.get();
        } else {
            i = 0;
        }
        if (((EncodingFlags) this.encodingFlags).isEncryption()) {
            i++;
            this.encryptionMethod = byteBuffer.get();
        }
        if (((EncodingFlags) this.encodingFlags).isDataLengthIndicator()) {
            iBufferToValue = ID3SyncSafeInteger.bufferToValue(byteBuffer);
            i += 4;
            AbstractTagItem.logger.config(getLoggingFilename() + ":Frame Size Is:" + this.frameSize + " Data Length Size:" + iBufferToValue);
        } else {
            iBufferToValue = -1;
        }
        int i2 = this.frameSize - i;
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        byteBufferSlice.limit(i2);
        if (((EncodingFlags) this.encodingFlags).isUnsynchronised()) {
            byteBufferSlice = ID3Unsynchronization.synchronize(byteBufferSlice);
            iLimit = byteBufferSlice.limit();
            AbstractTagItem.logger.config(getLoggingFilename() + ":Frame Size After Syncing is:" + iLimit);
        } else {
            iLimit = i2;
        }
        try {
            if (((EncodingFlags) this.encodingFlags).isCompression()) {
                ByteBuffer byteBufferUncompress = ID3Compression.uncompress(identifier, getLoggingFilename(), byteBuffer, iBufferToValue, i2);
                if (((EncodingFlags) this.encodingFlags).isEncryption()) {
                    this.frameBody = readEncryptedBody(identifier, byteBufferUncompress, iBufferToValue);
                } else {
                    this.frameBody = readBody(identifier, byteBufferUncompress, iBufferToValue);
                }
            } else if (((EncodingFlags) this.encodingFlags).isEncryption()) {
                byteBuffer.slice().limit(i2);
                this.frameBody = readEncryptedBody(identifier, byteBuffer, this.frameSize);
            } else {
                this.frameBody = readBody(identifier, byteBufferSlice, iLimit);
            }
            if (!(this.frameBody instanceof ID3v24FrameBody)) {
                AbstractTagItem.logger.config(getLoggingFilename() + ":Converted frame body with:" + identifier + " to deprecated framebody");
                this.frameBody = new FrameBodyDeprecated((AbstractID3v2FrameBody) this.frameBody);
            }
        } finally {
            byteBuffer.position(byteBuffer.position() + i2);
        }
    }

    @Override
    public void setEncoding(Charset charset) {
        Integer idForCharset = TextEncoding.getInstanceOf().getIdForCharset(charset);
        if (idForCharset == null || idForCharset.intValue() >= 4) {
            return;
        }
        getBody().setTextEncoding(idForCharset.byteValue());
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        AbstractTagItem.logger.config("Writing frame to file:" + getIdentifier());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(10);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        ((AbstractID3v2FrameBody) this.frameBody).write(byteArrayOutputStream2);
        byte[] byteArray = byteArrayOutputStream2.toByteArray();
        boolean z = TagOptionSingleton.getInstance().isUnsyncTags() && ID3Unsynchronization.requiresUnsynchronization(byteArray);
        if (z) {
            byteArray = ID3Unsynchronization.unsynchronize(byteArray);
            AbstractTagItem.logger.config("bodybytebuffer:sizeafterunsynchronisation:" + byteArray.length);
        }
        if (getIdentifier().length() == 3) {
            this.identifier += ' ';
        }
        byteBufferAllocate.put(getIdentifier().getBytes(StandardCharsets.ISO_8859_1), 0, 4);
        int length = byteArray.length;
        AbstractTagItem.logger.fine("Frame Size Is:" + length);
        byteBufferAllocate.put(ID3SyncSafeInteger.valueToBuffer(length));
        byteBufferAllocate.put(this.statusFlags.getWriteFlags());
        ((EncodingFlags) this.encodingFlags).unsetNonStandardFlags();
        if (z) {
            ((EncodingFlags) this.encodingFlags).setUnsynchronised();
        } else {
            ((EncodingFlags) this.encodingFlags).unsetUnsynchronised();
        }
        ((EncodingFlags) this.encodingFlags).unsetCompression();
        ((EncodingFlags) this.encodingFlags).unsetDataLengthIndicator();
        byteBufferAllocate.put(this.encodingFlags.getFlags());
        try {
            byteArrayOutputStream.write(byteBufferAllocate.array());
            if (((EncodingFlags) this.encodingFlags).isEncryption()) {
                byteArrayOutputStream.write(this.encryptionMethod);
            }
            if (((EncodingFlags) this.encodingFlags).isGrouping()) {
                byteArrayOutputStream.write(this.groupIdentifier);
            }
            byteArrayOutputStream.write(byteArray);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public class EncodingFlags extends AbstractID3v2Frame.EncodingFlags {
        public static final int MASK_COMPRESSION = 8;
        public static final int MASK_DATA_LENGTH_INDICATOR = 1;
        public static final int MASK_ENCRYPTION = 4;
        public static final int MASK_FRAME_UNSYNCHRONIZATION = 2;
        public static final int MASK_GROUPING_IDENTITY = 64;
        public static final String TYPE_COMPRESSION = "compression";
        public static final String TYPE_DATALENGTHINDICATOR = "dataLengthIndicator";
        public static final String TYPE_ENCRYPTION = "encryption";
        public static final String TYPE_FRAMEUNSYNCHRONIZATION = "frameUnsynchronisation";
        public static final String TYPE_GROUPIDENTITY = "groupidentity";

        public EncodingFlags() {
            super();
        }

        @Override
        public void createStructure() {
            MP3File.getStructureFormatter().openHeadingElement("encodingFlags", "");
            MP3File.getStructureFormatter().addElement("compression", this.flags & 8);
            MP3File.getStructureFormatter().addElement("encryption", this.flags & 4);
            MP3File.getStructureFormatter().addElement("groupidentity", this.flags & 64);
            MP3File.getStructureFormatter().addElement(TYPE_FRAMEUNSYNCHRONIZATION, this.flags & 2);
            MP3File.getStructureFormatter().addElement(TYPE_DATALENGTHINDICATOR, this.flags & 1);
            MP3File.getStructureFormatter().closeHeadingElement("encodingFlags");
        }

        @Override
        public byte getFlags() {
            return this.flags;
        }

        public boolean isCompression() {
            return (this.flags & 8) > 0;
        }

        public boolean isDataLengthIndicator() {
            return (this.flags & 1) > 0;
        }

        public boolean isEncryption() {
            return (this.flags & 4) > 0;
        }

        public boolean isGrouping() {
            return (this.flags & 64) > 0;
        }

        public boolean isNonStandardFlags() {
            byte b = this.flags;
            return (b & SocketData.CLAZZ_TYPE_END_SOCKET) > 0 || (b & 32) > 0 || (b & 16) > 0;
        }

        public boolean isUnsynchronised() {
            return (this.flags & 2) > 0;
        }

        public void logEnabledFlags() {
            if (isNonStandardFlags()) {
                AbstractTagItem.logger.warning(ID3v24Frame.this.getLoggingFilename() + StringUtils.PROCESS_POSTFIX_DELIMITER + ID3v24Frame.this.identifier + ":Unknown Encoding Flags:" + Hex.asHex(this.flags));
            }
            if (isCompression()) {
                AbstractTagItem.logger.warning(ErrorMessage.MP3_FRAME_IS_COMPRESSED.getMsg(ID3v24Frame.this.getLoggingFilename(), ID3v24Frame.this.identifier));
            }
            if (isEncryption()) {
                AbstractTagItem.logger.warning(ErrorMessage.MP3_FRAME_IS_ENCRYPTED.getMsg(ID3v24Frame.this.getLoggingFilename(), ID3v24Frame.this.identifier));
            }
            if (isGrouping()) {
                AbstractTagItem.logger.config(ErrorMessage.MP3_FRAME_IS_GROUPED.getMsg(ID3v24Frame.this.getLoggingFilename(), ID3v24Frame.this.identifier));
            }
            if (isUnsynchronised()) {
                AbstractTagItem.logger.config(ErrorMessage.MP3_FRAME_IS_UNSYNCHRONISED.getMsg(ID3v24Frame.this.getLoggingFilename(), ID3v24Frame.this.identifier));
            }
            if (isDataLengthIndicator()) {
                AbstractTagItem.logger.config(ErrorMessage.MP3_FRAME_IS_DATA_LENGTH_INDICATOR.getMsg(ID3v24Frame.this.getLoggingFilename(), ID3v24Frame.this.identifier));
            }
        }

        public void setCompression() {
            this.flags = (byte) (this.flags | 8);
        }

        public void setDataLengthIndicator() {
            this.flags = (byte) (this.flags | 1);
        }

        public void setEncryption() {
            this.flags = (byte) (this.flags | 4);
        }

        public void setGrouping() {
            this.flags = (byte) (this.flags | 64);
        }

        public void setUnsynchronised() {
            this.flags = (byte) (this.flags | 2);
        }

        public void unsetCompression() {
            this.flags = (byte) (this.flags & (-9));
        }

        public void unsetDataLengthIndicator() {
            this.flags = (byte) (this.flags & (-2));
        }

        public void unsetEncryption() {
            this.flags = (byte) (this.flags & (-5));
        }

        public void unsetGrouping() {
            this.flags = (byte) (this.flags & (-65));
        }

        public void unsetNonStandardFlags() {
            if (isNonStandardFlags()) {
                AbstractTagItem.logger.warning(ID3v24Frame.this.getLoggingFilename() + StringUtils.PROCESS_POSTFIX_DELIMITER + ID3v24Frame.this.getIdentifier() + ":Unsetting Unknown Encoding Flags:" + Hex.asHex(this.flags));
                this.flags = (byte) (((byte) (((byte) (this.flags & 127)) & (-33))) & (-17));
            }
        }

        public void unsetUnsynchronised() {
            this.flags = (byte) (this.flags & (-3));
        }

        public EncodingFlags(byte b) {
            super(b);
            logEnabledFlags();
        }
    }

    public class StatusFlags extends AbstractID3v2Frame.StatusFlags {
        public static final int MASK_FILE_ALTER_PRESERVATION = 32;
        public static final int MASK_READ_ONLY = 16;
        public static final int MASK_TAG_ALTER_PRESERVATION = 64;
        public static final String TYPE_FILEALTERPRESERVATION = "typeFileAlterPreservation";
        public static final String TYPE_READONLY = "typeReadOnly";
        public static final String TYPE_TAGALTERPRESERVATION = "typeTagAlterPreservation";

        public StatusFlags() {
            super();
        }

        private byte convertV3ToV4Flags(byte b) {
            byte b2 = (b & 64) != 0 ? (byte) 32 : (byte) 0;
            return (b & SocketData.CLAZZ_TYPE_END_SOCKET) != 0 ? (byte) (b2 | 64) : b2;
        }

        @Override
        public void createStructure() {
            MP3File.getStructureFormatter().openHeadingElement("statusFlags", "");
            MP3File.getStructureFormatter().addElement("typeTagAlterPreservation", this.originalFlags & 64);
            MP3File.getStructureFormatter().addElement("typeFileAlterPreservation", this.originalFlags & 32);
            MP3File.getStructureFormatter().addElement("typeReadOnly", this.originalFlags & 16);
            MP3File.getStructureFormatter().closeHeadingElement("statusFlags");
        }

        public void modifyFlags() {
            if (ID3v24Frames.getInstanceOf().isDiscardIfFileAltered(ID3v24Frame.this.getIdentifier())) {
                this.writeFlags = (byte) (((byte) (this.writeFlags | 32)) & (-65));
            } else {
                this.writeFlags = (byte) (((byte) (this.writeFlags & (-33))) & (-65));
            }
        }

        public StatusFlags(byte b) {
            super();
            this.originalFlags = b;
            this.writeFlags = b;
            modifyFlags();
        }

        public StatusFlags(ID3v23Frame.StatusFlags statusFlags) {
            super();
            byte bConvertV3ToV4Flags = convertV3ToV4Flags(statusFlags.getOriginalFlags());
            this.originalFlags = bConvertV3ToV4Flags;
            this.writeFlags = bConvertV3ToV4Flags;
            modifyFlags();
        }
    }

    public ID3v24Frame(String str) {
        super(str);
        this.statusFlags = new StatusFlags();
        this.encodingFlags = new EncodingFlags();
    }

    public ID3v24Frame(ID3v24Frame iD3v24Frame) {
        super(iD3v24Frame);
        this.statusFlags = new StatusFlags(iD3v24Frame.getStatusFlags().getOriginalFlags());
        this.encodingFlags = new EncodingFlags(iD3v24Frame.getEncodingFlags().getFlags());
    }

    public ID3v24Frame(ID3v23Frame iD3v23Frame, String str) throws InvalidFrameException {
        this.identifier = str;
        this.statusFlags = new StatusFlags((ID3v23Frame.StatusFlags) iD3v23Frame.getStatusFlags());
        this.encodingFlags = new EncodingFlags(iD3v23Frame.getEncodingFlags().getFlags());
    }

    public ID3v24Frame(AbstractID3v2Frame abstractID3v2Frame) throws InvalidFrameException {
        if (!(abstractID3v2Frame instanceof ID3v24Frame)) {
            boolean z = abstractID3v2Frame instanceof ID3v23Frame;
            if (z) {
                this.statusFlags = new StatusFlags((ID3v23Frame.StatusFlags) abstractID3v2Frame.getStatusFlags());
                this.encodingFlags = new EncodingFlags(abstractID3v2Frame.getEncodingFlags().getFlags());
            } else if (abstractID3v2Frame instanceof ID3v22Frame) {
                this.statusFlags = new StatusFlags();
                this.encodingFlags = new EncodingFlags();
            }
            if (z) {
                createV24FrameFromV23Frame((ID3v23Frame) abstractID3v2Frame);
            } else if (abstractID3v2Frame instanceof ID3v22Frame) {
                createV24FrameFromV23Frame(new ID3v23Frame(abstractID3v2Frame));
            }
            this.frameBody.setHeader(this);
            return;
        }
        throw new UnsupportedOperationException("Copy Constructor not called. Please type cast the argument");
    }

    public ID3v24Frame(Lyrics3v2Field lyrics3v2Field) throws InvalidTagException {
        String identifier = lyrics3v2Field.getIdentifier();
        if (!identifier.equals(Lyrics3v2Fields.FIELD_V2_INDICATIONS)) {
            if (identifier.equals(Lyrics3v2Fields.FIELD_V2_LYRICS_MULTI_LINE_TEXT)) {
                FieldFrameBodyLYR fieldFrameBodyLYR = (FieldFrameBodyLYR) lyrics3v2Field.getBody();
                boolean zHasTimeStamp = fieldFrameBodyLYR.hasTimeStamp();
                FrameBodySYLT frameBodySYLT = new FrameBodySYLT(0, "ENG", 2, 1, "", new byte[0]);
                FrameBodyUSLT frameBodyUSLT = new FrameBodyUSLT((byte) 0, "ENG", "", "");
                for (Lyrics3Line lyrics3Line : fieldFrameBodyLYR) {
                    if (!zHasTimeStamp) {
                        frameBodyUSLT.addLyric(lyrics3Line);
                    }
                }
                if (zHasTimeStamp) {
                    this.frameBody = frameBodySYLT;
                    frameBodySYLT.setHeader(this);
                    return;
                } else {
                    this.frameBody = frameBodyUSLT;
                    frameBodyUSLT.setHeader(this);
                    return;
                }
            }
            if (identifier.equals(Lyrics3v2Fields.FIELD_V2_ADDITIONAL_MULTI_LINE_TEXT)) {
                FrameBodyCOMM frameBodyCOMM = new FrameBodyCOMM((byte) 0, "ENG", "", ((FieldFrameBodyINF) lyrics3v2Field.getBody()).getAdditionalInformation());
                this.frameBody = frameBodyCOMM;
                frameBodyCOMM.setHeader(this);
                return;
            }
            if (identifier.equals(Lyrics3v2Fields.FIELD_V2_AUTHOR)) {
                FrameBodyTCOM frameBodyTCOM = new FrameBodyTCOM((byte) 0, ((FieldFrameBodyAUT) lyrics3v2Field.getBody()).getAuthor());
                this.frameBody = frameBodyTCOM;
                frameBodyTCOM.setHeader(this);
                return;
            }
            if (identifier.equals(Lyrics3v2Fields.FIELD_V2_ALBUM)) {
                FrameBodyTALB frameBodyTALB = new FrameBodyTALB((byte) 0, ((FieldFrameBodyEAL) lyrics3v2Field.getBody()).getAlbum());
                this.frameBody = frameBodyTALB;
                frameBodyTALB.setHeader(this);
                return;
            }
            if (identifier.equals(Lyrics3v2Fields.FIELD_V2_ARTIST)) {
                FrameBodyTPE1 frameBodyTPE1 = new FrameBodyTPE1((byte) 0, ((FieldFrameBodyEAR) lyrics3v2Field.getBody()).getArtist());
                this.frameBody = frameBodyTPE1;
                frameBodyTPE1.setHeader(this);
                return;
            } else if (identifier.equals(Lyrics3v2Fields.FIELD_V2_TRACK)) {
                FrameBodyTIT2 frameBodyTIT2 = new FrameBodyTIT2((byte) 0, ((FieldFrameBodyETT) lyrics3v2Field.getBody()).getTitle());
                this.frameBody = frameBodyTIT2;
                frameBodyTIT2.setHeader(this);
                return;
            } else {
                if (identifier.equals(Lyrics3v2Fields.FIELD_V2_IMAGE)) {
                    throw new InvalidTagException("Cannot create ID3v2.40 frame from Lyrics3 image field.");
                }
                throw new InvalidTagException("Cannot caret ID3v2.40 frame from " + identifier + " Lyrics3 field");
            }
        }
        throw new InvalidTagException("Cannot create ID3v2.40 frame from Lyrics3 indications field.");
    }

    public ID3v24Frame(ByteBuffer byteBuffer, String str) throws InvalidFrameException, InvalidDataTypeException {
        setLoggingFilename(str);
        read(byteBuffer);
    }

    public ID3v24Frame(ByteBuffer byteBuffer) throws InvalidFrameException, InvalidDataTypeException {
        this(byteBuffer, "");
    }
}
