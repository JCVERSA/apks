package com.transsion.audiotagger.tag.id3;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.mp3.MP3File;
import com.transsion.audiotagger.logging.Hex;
import com.transsion.audiotagger.tag.EmptyFrameException;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.InvalidFrameException;
import com.transsion.audiotagger.tag.InvalidFrameIdentifierException;
import com.transsion.audiotagger.tag.id3.framebody.AbstractID3v2FrameBody;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyDeprecated;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUnsupported;
import com.transsion.audiotagger.tag.id3.framebody.ID3v23FrameBody;
import com.transsion.audiotagger.tag.id3.valuepair.TextEncoding;
import com.transsion.audiotagger.utils.EqualsUtil;
import com.transsion.socket.pkgdata.SocketData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.regex.Pattern;

public class ID3v23Frame extends AbstractID3v2Frame {
    protected static final int FRAME_COMPRESSION_UNCOMPRESSED_SIZE = 4;
    protected static final int FRAME_ENCRYPTION_INDICATOR_SIZE = 1;
    protected static final int FRAME_FLAGS_SIZE = 2;
    protected static final int FRAME_GROUPING_INDICATOR_SIZE = 1;
    protected static final int FRAME_HEADER_SIZE = 10;
    protected static final int FRAME_ID_SIZE = 4;
    protected static final int FRAME_SIZE_SIZE = 4;
    private static Pattern validFrameIdentifier = Pattern.compile("[A-Z][0-9A-Z]{3}");
    private int encryptionMethod;
    private int groupIdentifier;

    public ID3v23Frame() {
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
        if (!(obj instanceof ID3v23Frame)) {
            return false;
        }
        ID3v23Frame iD3v23Frame = (ID3v23Frame) obj;
        return EqualsUtil.areEqual(this.statusFlags, iD3v23Frame.statusFlags) && EqualsUtil.areEqual(this.encodingFlags, iD3v23Frame.encodingFlags) && super.equals(iD3v23Frame);
    }

    @Override
    public AbstractID3v2Frame.EncodingFlags getEncodingFlags() {
        return this.encodingFlags;
    }

    public int getEncryptionMethod() {
        return this.encryptionMethod;
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
        return ID3v23Frames.getInstanceOf().isBinary(getId());
    }

    @Override
    public boolean isCommon() {
        return ID3v23Frames.getInstanceOf().isCommon(getId());
    }

    public boolean isValidID3v2FrameIdentifier(String str) {
        return validFrameIdentifier.matcher(str).matches();
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws InvalidFrameException, InvalidDataTypeException {
        int i;
        int i2;
        String identifier = readIdentifier(byteBuffer);
        if (!isValidID3v2FrameIdentifier(identifier)) {
            AbstractTagItem.logger.config(getLoggingFilename() + ":Invalid identifier:" + identifier);
            byteBuffer.position(byteBuffer.position() - (getFrameIdSize() + (-1)));
            throw new InvalidFrameIdentifierException(getLoggingFilename() + StringUtils.PROCESS_POSTFIX_DELIMITER + identifier + ":is not a valid ID3v2.30 frame");
        }
        int i3 = byteBuffer.getInt();
        this.frameSize = i3;
        if (i3 < 0) {
            AbstractTagItem.logger.warning(getLoggingFilename() + ":Invalid Frame Size:" + this.frameSize + StringUtils.PROCESS_POSTFIX_DELIMITER + identifier);
            throw new InvalidFrameException(identifier + " is invalid frame:" + this.frameSize);
        }
        if (i3 == 0) {
            AbstractTagItem.logger.warning(getLoggingFilename() + ":Empty Frame Size:" + identifier);
            byteBuffer.get();
            byteBuffer.get();
            throw new EmptyFrameException(identifier + " is empty frame");
        }
        if (i3 > byteBuffer.remaining()) {
            AbstractTagItem.logger.warning(getLoggingFilename() + ":Invalid Frame size of " + this.frameSize + " larger than size of" + byteBuffer.remaining() + " before mp3 audio:" + identifier);
            throw new InvalidFrameException(identifier + " is invalid frame:" + this.frameSize + " larger than size of" + byteBuffer.remaining() + " before mp3 audio:" + identifier);
        }
        this.statusFlags = new StatusFlags(byteBuffer.get());
        this.encodingFlags = new EncodingFlags(byteBuffer.get());
        String strConvertFrameID23To24 = ID3Tags.convertFrameID23To24(identifier);
        if (strConvertFrameID23To24 == null) {
            strConvertFrameID23To24 = ID3Tags.isID3v23FrameIdentifier(identifier) ? identifier : "Unsupported";
        }
        AbstractTagItem.logger.fine(getLoggingFilename() + ":Identifier was:" + identifier + " reading using:" + strConvertFrameID23To24 + "with frame size:" + this.frameSize);
        if (((EncodingFlags) this.encodingFlags).isCompression()) {
            i2 = byteBuffer.getInt();
            AbstractTagItem.logger.fine(getLoggingFilename() + ":Decompressed frame size is:" + i2);
            i = 4;
        } else {
            i = 0;
            i2 = -1;
        }
        if (((EncodingFlags) this.encodingFlags).isEncryption()) {
            i++;
            this.encryptionMethod = byteBuffer.get();
        }
        if (((EncodingFlags) this.encodingFlags).isGrouping()) {
            i++;
            this.groupIdentifier = byteBuffer.get();
        }
        if (((EncodingFlags) this.encodingFlags).isNonStandardFlags()) {
            AbstractTagItem.logger.severe(getLoggingFilename() + ":InvalidEncodingFlags:" + Hex.asHex(((EncodingFlags) this.encodingFlags).getFlags()));
        }
        if (((EncodingFlags) this.encodingFlags).isCompression() && i2 > this.frameSize * 100) {
            throw new InvalidFrameException(identifier + " is invalid frame, frame size " + this.frameSize + " cannot be:" + i2 + " when uncompressed");
        }
        int i4 = this.frameSize - i;
        if (i4 <= 0) {
            throw new InvalidFrameException(identifier + " is invalid frame, realframeSize is:" + i4);
        }
        try {
            if (((EncodingFlags) this.encodingFlags).isCompression()) {
                ByteBuffer byteBufferUncompress = ID3Compression.uncompress(identifier, getLoggingFilename(), byteBuffer, i2, i4);
                if (((EncodingFlags) this.encodingFlags).isEncryption()) {
                    this.frameBody = readEncryptedBody(strConvertFrameID23To24, byteBufferUncompress, i2);
                } else {
                    this.frameBody = readBody(strConvertFrameID23To24, byteBufferUncompress, i2);
                }
            } else if (((EncodingFlags) this.encodingFlags).isEncryption()) {
                ByteBuffer byteBufferSlice = byteBuffer.slice();
                byteBufferSlice.limit(this.frameSize);
                this.frameBody = readEncryptedBody(identifier, byteBufferSlice, this.frameSize);
            } else {
                ByteBuffer byteBufferSlice2 = byteBuffer.slice();
                byteBufferSlice2.limit(i4);
                this.frameBody = readBody(strConvertFrameID23To24, byteBufferSlice2, i4);
            }
            if (!(this.frameBody instanceof ID3v23FrameBody)) {
                AbstractTagItem.logger.config(getLoggingFilename() + ":Converted frameBody with:" + identifier + " to deprecated frameBody");
                this.frameBody = new FrameBodyDeprecated((AbstractID3v2FrameBody) this.frameBody);
            }
        } finally {
            byteBuffer.position(byteBuffer.position() + i4);
        }
    }

    @Override
    public void setEncoding(Charset charset) {
        Integer idForCharset = TextEncoding.getInstanceOf().getIdForCharset(charset);
        if (idForCharset == null || idForCharset.intValue() >= 2) {
            return;
        }
        getBody().setTextEncoding(idForCharset.byteValue());
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        AbstractTagItem.logger.config("Writing frame to buffer:" + getIdentifier());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(10);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        ((AbstractID3v2FrameBody) this.frameBody).write(byteArrayOutputStream2);
        if (getIdentifier().length() == 3) {
            this.identifier += ' ';
        }
        byteBufferAllocate.put(getIdentifier().getBytes(StandardCharsets.ISO_8859_1), 0, 4);
        int size = this.frameBody.getSize();
        AbstractTagItem.logger.fine("Frame Size Is:" + size);
        byteBufferAllocate.putInt(this.frameBody.getSize());
        byteBufferAllocate.put(this.statusFlags.getWriteFlags());
        ((EncodingFlags) this.encodingFlags).unsetNonStandardFlags();
        ((EncodingFlags) this.encodingFlags).unsetCompression();
        byteBufferAllocate.put(this.encodingFlags.getFlags());
        try {
            byteArrayOutputStream.write(byteBufferAllocate.array());
            if (((EncodingFlags) this.encodingFlags).isEncryption()) {
                byteArrayOutputStream.write(this.encryptionMethod);
            }
            if (((EncodingFlags) this.encodingFlags).isGrouping()) {
                byteArrayOutputStream.write(this.groupIdentifier);
            }
            byteArrayOutputStream.write(byteArrayOutputStream2.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public class EncodingFlags extends AbstractID3v2Frame.EncodingFlags {
        public static final int MASK_COMPRESSION = 128;
        public static final int MASK_ENCRYPTION = 64;
        public static final int MASK_GROUPING_IDENTITY = 32;
        public static final String TYPE_COMPRESSION = "compression";
        public static final String TYPE_ENCRYPTION = "encryption";
        public static final String TYPE_GROUPIDENTITY = "groupidentity";

        public EncodingFlags() {
            super();
        }

        @Override
        public void createStructure() {
            MP3File.getStructureFormatter().openHeadingElement("encodingFlags", "");
            MP3File.getStructureFormatter().addElement("compression", this.flags & SocketData.CLAZZ_TYPE_END_SOCKET);
            MP3File.getStructureFormatter().addElement("encryption", this.flags & 64);
            MP3File.getStructureFormatter().addElement("groupidentity", this.flags & 32);
            MP3File.getStructureFormatter().closeHeadingElement("encodingFlags");
        }

        public boolean isCompression() {
            return (this.flags & SocketData.CLAZZ_TYPE_END_SOCKET) > 0;
        }

        public boolean isEncryption() {
            return (this.flags & 64) > 0;
        }

        public boolean isGrouping() {
            return (this.flags & 32) > 0;
        }

        public boolean isNonStandardFlags() {
            byte b = this.flags;
            return (b & 16) > 0 || (b & 8) > 0 || (b & 4) > 0 || (b & 2) > 0 || (b & 1) > 0;
        }

        public void logEnabledFlags() {
            if (isNonStandardFlags()) {
                AbstractTagItem.logger.warning(ID3v23Frame.this.getLoggingFilename() + StringUtils.PROCESS_POSTFIX_DELIMITER + ID3v23Frame.this.identifier + ":Unknown Encoding Flags:" + Hex.asHex(this.flags));
            }
            if (isCompression()) {
                AbstractTagItem.logger.warning(ID3v23Frame.this.getLoggingFilename() + StringUtils.PROCESS_POSTFIX_DELIMITER + ID3v23Frame.this.identifier + " is compressed");
            }
            if (isEncryption()) {
                AbstractTagItem.logger.warning(ID3v23Frame.this.getLoggingFilename() + StringUtils.PROCESS_POSTFIX_DELIMITER + ID3v23Frame.this.identifier + " is encrypted");
            }
            if (isGrouping()) {
                AbstractTagItem.logger.warning(ID3v23Frame.this.getLoggingFilename() + StringUtils.PROCESS_POSTFIX_DELIMITER + ID3v23Frame.this.identifier + " is grouped");
            }
        }

        public void setCompression() {
            this.flags = (byte) (this.flags | SocketData.CLAZZ_TYPE_END_SOCKET);
        }

        public void setEncryption() {
            this.flags = (byte) (this.flags | 64);
        }

        public void setGrouping() {
            this.flags = (byte) (this.flags | 32);
        }

        public void unsetCompression() {
            this.flags = (byte) (this.flags & 127);
        }

        public void unsetEncryption() {
            this.flags = (byte) (this.flags & (-65));
        }

        public void unsetGrouping() {
            this.flags = (byte) (this.flags & (-33));
        }

        public void unsetNonStandardFlags() {
            if (isNonStandardFlags()) {
                AbstractTagItem.logger.warning(ID3v23Frame.this.getLoggingFilename() + StringUtils.PROCESS_POSTFIX_DELIMITER + ID3v23Frame.this.getIdentifier() + ":Unsetting Unknown Encoding Flags:" + Hex.asHex(this.flags));
                this.flags = (byte) (((byte) (((byte) (((byte) (((byte) (this.flags & (-17))) & (-9))) & (-5))) & (-3))) & (-2));
            }
        }

        public EncodingFlags(byte b) {
            super(b);
            logEnabledFlags();
        }
    }

    public ID3v23Frame(String str) {
        super(str);
        this.statusFlags = new StatusFlags();
        this.encodingFlags = new EncodingFlags();
    }

    public class StatusFlags extends AbstractID3v2Frame.StatusFlags {
        public static final int MASK_FILE_ALTER_PRESERVATION = 64;
        public static final int MASK_READ_ONLY = 32;
        public static final int MASK_TAG_ALTER_PRESERVATION = 128;
        public static final String TYPE_FILEALTERPRESERVATION = "typeFileAlterPreservation";
        public static final String TYPE_READONLY = "typeReadOnly";
        public static final String TYPE_TAGALTERPRESERVATION = "typeTagAlterPreservation";

        public StatusFlags() {
            super();
            this.originalFlags = (byte) 0;
            this.writeFlags = (byte) 0;
        }

        private byte convertV4ToV3Flags(byte b) {
            byte b2 = (b & 32) != 0 ? (byte) 64 : (byte) 0;
            return (b & 64) != 0 ? (byte) (b2 | SocketData.CLAZZ_TYPE_END_SOCKET) : b2;
        }

        @Override
        public void createStructure() {
            MP3File.getStructureFormatter().openHeadingElement("statusFlags", "");
            MP3File.getStructureFormatter().addElement("typeTagAlterPreservation", this.originalFlags & SocketData.CLAZZ_TYPE_END_SOCKET);
            MP3File.getStructureFormatter().addElement("typeFileAlterPreservation", this.originalFlags & 64);
            MP3File.getStructureFormatter().addElement("typeReadOnly", this.originalFlags & 32);
            MP3File.getStructureFormatter().closeHeadingElement("statusFlags");
        }

        public void modifyFlags() {
            if (ID3v23Frames.getInstanceOf().isDiscardIfFileAltered(ID3v23Frame.this.getIdentifier())) {
                this.writeFlags = (byte) (((byte) (this.writeFlags | 64)) & 127);
            } else {
                this.writeFlags = (byte) (((byte) (this.writeFlags & (-65))) & 127);
            }
        }

        public StatusFlags(byte b) {
            super();
            this.originalFlags = b;
            this.writeFlags = b;
            modifyFlags();
        }

        public StatusFlags(ID3v24Frame.StatusFlags statusFlags) {
            super();
            byte bConvertV4ToV3Flags = convertV4ToV3Flags(statusFlags.getOriginalFlags());
            this.originalFlags = bConvertV4ToV3Flags;
            this.writeFlags = bConvertV4ToV3Flags;
            modifyFlags();
        }
    }

    public ID3v23Frame(ID3v23Frame iD3v23Frame) {
        super(iD3v23Frame);
        this.statusFlags = new StatusFlags(iD3v23Frame.getStatusFlags().getOriginalFlags());
        this.encodingFlags = new EncodingFlags(iD3v23Frame.getEncodingFlags().getFlags());
    }

    public ID3v23Frame(ID3v24Frame iD3v24Frame, String str) throws InvalidFrameException {
        this.identifier = str;
        this.statusFlags = new StatusFlags((ID3v24Frame.StatusFlags) iD3v24Frame.getStatusFlags());
        this.encodingFlags = new EncodingFlags(iD3v24Frame.getEncodingFlags().getFlags());
    }

    public ID3v23Frame(AbstractID3v2Frame abstractID3v2Frame) throws InvalidFrameException {
        AbstractTagItem.logger.finer("Creating frame from a frame of a different version");
        if (!(abstractID3v2Frame instanceof ID3v23Frame)) {
            boolean z = abstractID3v2Frame instanceof ID3v22Frame;
            if (z) {
                this.statusFlags = new StatusFlags();
                this.encodingFlags = new EncodingFlags();
            } else if (abstractID3v2Frame instanceof ID3v24Frame) {
                this.statusFlags = new StatusFlags((ID3v24Frame.StatusFlags) abstractID3v2Frame.getStatusFlags());
                this.encodingFlags = new EncodingFlags(abstractID3v2Frame.getEncodingFlags().getFlags());
            }
            if (abstractID3v2Frame instanceof ID3v24Frame) {
                if (abstractID3v2Frame.getBody() instanceof FrameBodyUnsupported) {
                    FrameBodyUnsupported frameBodyUnsupported = new FrameBodyUnsupported((FrameBodyUnsupported) abstractID3v2Frame.getBody());
                    this.frameBody = frameBodyUnsupported;
                    frameBodyUnsupported.setHeader(this);
                    this.identifier = abstractID3v2Frame.getIdentifier();
                    AbstractTagItem.logger.config("UNKNOWN:Orig id is:" + abstractID3v2Frame.getIdentifier() + ":New id is:" + this.identifier);
                    return;
                }
                if (abstractID3v2Frame.getBody() instanceof FrameBodyDeprecated) {
                    if (ID3Tags.isID3v23FrameIdentifier(abstractID3v2Frame.getIdentifier())) {
                        AbstractID3v2FrameBody originalFrameBody = ((FrameBodyDeprecated) abstractID3v2Frame.getBody()).getOriginalFrameBody();
                        this.frameBody = originalFrameBody;
                        originalFrameBody.setHeader(this);
                        AbstractTagFrameBody abstractTagFrameBody = this.frameBody;
                        abstractTagFrameBody.setTextEncoding(ID3TextEncodingConversion.getTextEncoding(this, abstractTagFrameBody.getTextEncoding()));
                        this.identifier = abstractID3v2Frame.getIdentifier();
                        AbstractTagItem.logger.config("DEPRECATED:Orig id is:" + abstractID3v2Frame.getIdentifier() + ":New id is:" + this.identifier);
                    } else {
                        FrameBodyDeprecated frameBodyDeprecated = new FrameBodyDeprecated((FrameBodyDeprecated) abstractID3v2Frame.getBody());
                        this.frameBody = frameBodyDeprecated;
                        frameBodyDeprecated.setHeader(this);
                        AbstractTagFrameBody abstractTagFrameBody2 = this.frameBody;
                        abstractTagFrameBody2.setTextEncoding(ID3TextEncodingConversion.getTextEncoding(this, abstractTagFrameBody2.getTextEncoding()));
                        this.identifier = abstractID3v2Frame.getIdentifier();
                        AbstractTagItem.logger.config("DEPRECATED:Orig id is:" + abstractID3v2Frame.getIdentifier() + ":New id is:" + this.identifier);
                        return;
                    }
                } else {
                    if (ID3Tags.isID3v24FrameIdentifier(abstractID3v2Frame.getIdentifier())) {
                        AbstractTagItem.logger.finer("isID3v24FrameIdentifier");
                        String strConvertFrameID24To23 = ID3Tags.convertFrameID24To23(abstractID3v2Frame.getIdentifier());
                        this.identifier = strConvertFrameID24To23;
                        if (strConvertFrameID24To23 != null) {
                            AbstractTagItem.logger.finer("V4:Orig id is:" + abstractID3v2Frame.getIdentifier() + ":New id is:" + this.identifier);
                            AbstractTagFrameBody abstractTagFrameBody3 = (AbstractTagFrameBody) ID3Tags.copyObject(abstractID3v2Frame.getBody());
                            this.frameBody = abstractTagFrameBody3;
                            abstractTagFrameBody3.setHeader(this);
                            AbstractTagFrameBody abstractTagFrameBody4 = this.frameBody;
                            abstractTagFrameBody4.setTextEncoding(ID3TextEncodingConversion.getTextEncoding(this, abstractTagFrameBody4.getTextEncoding()));
                            return;
                        }
                        String strForceFrameID24To23 = ID3Tags.forceFrameID24To23(abstractID3v2Frame.getIdentifier());
                        this.identifier = strForceFrameID24To23;
                        if (strForceFrameID24To23 != null) {
                            AbstractTagItem.logger.finer("V4:Orig id is:" + abstractID3v2Frame.getIdentifier() + ":New id is:" + this.identifier);
                            AbstractID3v2FrameBody body = readBody(this.identifier, (AbstractID3v2FrameBody) abstractID3v2Frame.getBody());
                            this.frameBody = body;
                            body.setHeader(this);
                            AbstractTagFrameBody abstractTagFrameBody5 = this.frameBody;
                            abstractTagFrameBody5.setTextEncoding(ID3TextEncodingConversion.getTextEncoding(this, abstractTagFrameBody5.getTextEncoding()));
                            return;
                        }
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        ((AbstractID3v2FrameBody) abstractID3v2Frame.getBody()).write(byteArrayOutputStream);
                        String identifier = abstractID3v2Frame.getIdentifier();
                        this.identifier = identifier;
                        FrameBodyUnsupported frameBodyUnsupported2 = new FrameBodyUnsupported(identifier, byteArrayOutputStream.toByteArray());
                        this.frameBody = frameBodyUnsupported2;
                        frameBodyUnsupported2.setHeader(this);
                        AbstractTagItem.logger.finer("V4:Orig id is:" + abstractID3v2Frame.getIdentifier() + ":New Id Unsupported is:" + this.identifier);
                        return;
                    }
                    AbstractTagItem.logger.severe("Orig id is:" + abstractID3v2Frame.getIdentifier() + "Unable to create Frame Body");
                    throw new InvalidFrameException("Orig id is:" + abstractID3v2Frame.getIdentifier() + "Unable to create Frame Body");
                }
            } else if (z) {
                if (ID3Tags.isID3v22FrameIdentifier(abstractID3v2Frame.getIdentifier())) {
                    String strConvertFrameID22To23 = ID3Tags.convertFrameID22To23(abstractID3v2Frame.getIdentifier());
                    this.identifier = strConvertFrameID22To23;
                    if (strConvertFrameID22To23 != null) {
                        AbstractTagItem.logger.config("V3:Orig id is:" + abstractID3v2Frame.getIdentifier() + ":New id is:" + this.identifier);
                        AbstractTagFrameBody abstractTagFrameBody6 = (AbstractTagFrameBody) ID3Tags.copyObject(abstractID3v2Frame.getBody());
                        this.frameBody = abstractTagFrameBody6;
                        abstractTagFrameBody6.setHeader(this);
                        return;
                    }
                    if (ID3Tags.isID3v22FrameIdentifier(abstractID3v2Frame.getIdentifier())) {
                        String strForceFrameID22To23 = ID3Tags.forceFrameID22To23(abstractID3v2Frame.getIdentifier());
                        this.identifier = strForceFrameID22To23;
                        if (strForceFrameID22To23 != null) {
                            AbstractTagItem.logger.config("V22Orig id is:" + abstractID3v2Frame.getIdentifier() + "New id is:" + this.identifier);
                            AbstractID3v2FrameBody body2 = readBody(this.identifier, (AbstractID3v2FrameBody) abstractID3v2Frame.getBody());
                            this.frameBody = body2;
                            body2.setHeader(this);
                            return;
                        }
                        FrameBodyDeprecated frameBodyDeprecated2 = new FrameBodyDeprecated((AbstractID3v2FrameBody) abstractID3v2Frame.getBody());
                        this.frameBody = frameBodyDeprecated2;
                        frameBodyDeprecated2.setHeader(this);
                        this.identifier = abstractID3v2Frame.getIdentifier();
                        AbstractTagItem.logger.config("Deprecated:V22:orig id id is:" + abstractID3v2Frame.getIdentifier() + ":New id is:" + this.identifier);
                        return;
                    }
                } else {
                    FrameBodyUnsupported frameBodyUnsupported3 = new FrameBodyUnsupported((FrameBodyUnsupported) abstractID3v2Frame.getBody());
                    this.frameBody = frameBodyUnsupported3;
                    frameBodyUnsupported3.setHeader(this);
                    this.identifier = abstractID3v2Frame.getIdentifier();
                    AbstractTagItem.logger.config("UNKNOWN:Orig id is:" + abstractID3v2Frame.getIdentifier() + ":New id is:" + this.identifier);
                    return;
                }
            }
            AbstractTagItem.logger.warning("Frame is unknown version:" + abstractID3v2Frame.getClass());
            return;
        }
        throw new UnsupportedOperationException("Copy Constructor not called. Please type cast the argument");
    }

    public ID3v23Frame(ByteBuffer byteBuffer, String str) throws InvalidFrameException, InvalidDataTypeException {
        setLoggingFilename(str);
        read(byteBuffer);
    }

    public ID3v23Frame(ByteBuffer byteBuffer) throws InvalidFrameException, InvalidDataTypeException {
        this(byteBuffer, "");
    }
}
