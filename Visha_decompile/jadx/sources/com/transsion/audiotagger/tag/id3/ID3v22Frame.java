package com.transsion.audiotagger.tag.id3;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.mp3.MP3File;
import com.transsion.audiotagger.tag.EmptyFrameException;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.InvalidFrameException;
import com.transsion.audiotagger.tag.InvalidFrameIdentifierException;
import com.transsion.audiotagger.tag.id3.framebody.AbstractID3v2FrameBody;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyDeprecated;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUnsupported;
import com.transsion.audiotagger.tag.id3.valuepair.TextEncoding;
import com.transsion.audiotagger.utils.EqualsUtil;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.logging.Level;
import java.util.regex.Pattern;

public class ID3v22Frame extends AbstractID3v2Frame {
    protected static final int FRAME_HEADER_SIZE = 6;
    protected static final int FRAME_ID_SIZE = 3;
    protected static final int FRAME_SIZE_SIZE = 3;
    private static Pattern validFrameIdentifier = Pattern.compile("[A-Z][0-9A-Z]{2}");

    public ID3v22Frame() {
    }

    private void createV22FrameFromV23Frame(ID3v23Frame iD3v23Frame) throws InvalidFrameException {
        String strConvertFrameID23To22 = ID3Tags.convertFrameID23To22(iD3v23Frame.getIdentifier());
        this.identifier = strConvertFrameID23To22;
        if (strConvertFrameID23To22 != null) {
            AbstractTagItem.logger.config("V2:Orig id is:" + iD3v23Frame.getIdentifier() + ":New id is:" + this.identifier);
            this.frameBody = (AbstractID3v2FrameBody) ID3Tags.copyObject(iD3v23Frame.getBody());
            return;
        }
        if (ID3Tags.isID3v23FrameIdentifier(iD3v23Frame.getIdentifier())) {
            String strForceFrameID23To22 = ID3Tags.forceFrameID23To22(iD3v23Frame.getIdentifier());
            this.identifier = strForceFrameID23To22;
            if (strForceFrameID23To22 == null) {
                throw new InvalidFrameException("Unable to convert v23 frame:" + iD3v23Frame.getIdentifier() + " to a v22 frame");
            }
            AbstractTagItem.logger.config("V2:Force:Orig id is:" + iD3v23Frame.getIdentifier() + ":New id is:" + this.identifier);
            this.frameBody = readBody(this.identifier, (AbstractID3v2FrameBody) iD3v23Frame.getBody());
            return;
        }
        if (!(iD3v23Frame.getBody() instanceof FrameBodyDeprecated)) {
            this.frameBody = new FrameBodyUnsupported((FrameBodyUnsupported) iD3v23Frame.getBody());
            this.identifier = iD3v23Frame.getIdentifier();
            AbstractTagItem.logger.config("v2:UNKNOWN:Orig id is:" + iD3v23Frame.getIdentifier() + ":New id is:" + this.identifier);
            return;
        }
        if (ID3Tags.isID3v22FrameIdentifier(iD3v23Frame.getIdentifier())) {
            this.frameBody = iD3v23Frame.getBody();
            this.identifier = iD3v23Frame.getIdentifier();
            AbstractTagItem.logger.config("DEPRECATED:Orig id is:" + iD3v23Frame.getIdentifier() + ":New id is:" + this.identifier);
            return;
        }
        this.frameBody = new FrameBodyDeprecated((FrameBodyDeprecated) iD3v23Frame.getBody());
        this.identifier = iD3v23Frame.getIdentifier();
        AbstractTagItem.logger.config("DEPRECATED:Orig id is:" + iD3v23Frame.getIdentifier() + ":New id is:" + this.identifier);
    }

    private int decodeSize(byte[] bArr) {
        int iIntValue = new BigInteger(bArr).intValue();
        if (iIntValue < 0) {
            AbstractTagItem.logger.warning("Invalid Frame Size of:" + iIntValue + "Decoded from bin:" + Integer.toBinaryString(iIntValue) + "Decoded from hex:" + Integer.toHexString(iIntValue));
        }
        return iIntValue;
    }

    private void encodeSize(ByteBuffer byteBuffer, int i) {
        byteBuffer.put((byte) ((16711680 & i) >> 16));
        byteBuffer.put((byte) ((65280 & i) >> 8));
        byteBuffer.put((byte) (i & 255));
        AbstractTagItem.logger.fine("Frame Size Is Actual:" + i + ":Encoded bin:" + Integer.toBinaryString(i) + ":Encoded Hex" + Integer.toHexString(i));
    }

    @Override
    public void createStructure() {
        MP3File.getStructureFormatter().openHeadingElement(TypedValues.AttributesType.S_FRAME, getIdentifier());
        MP3File.getStructureFormatter().addElement("frameSize", this.frameSize);
        this.frameBody.createStructure();
        MP3File.getStructureFormatter().closeHeadingElement(TypedValues.AttributesType.S_FRAME);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ID3v22Frame)) {
            return false;
        }
        ID3v22Frame iD3v22Frame = (ID3v22Frame) obj;
        return EqualsUtil.areEqual(this.statusFlags, iD3v22Frame.statusFlags) && EqualsUtil.areEqual(this.encodingFlags, iD3v22Frame.encodingFlags) && super.equals(iD3v22Frame);
    }

    @Override
    public int getFrameHeaderSize() {
        return 6;
    }

    @Override
    public int getFrameIdSize() {
        return 3;
    }

    @Override
    public int getFrameSizeSize() {
        return 3;
    }

    @Override
    public int getSize() {
        return this.frameBody.getSize() + getFrameHeaderSize();
    }

    @Override
    public boolean isBinary() {
        return ID3v22Frames.getInstanceOf().isBinary(getId());
    }

    @Override
    public boolean isCommon() {
        return ID3v22Frames.getInstanceOf().isCommon(getId());
    }

    @Override
    public boolean isPadding(byte[] bArr) {
        return bArr[0] == 0 && bArr[1] == 0 && bArr[2] == 0;
    }

    public boolean isValidID3v2FrameIdentifier(String str) {
        return validFrameIdentifier.matcher(str).matches();
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws InvalidFrameException, InvalidDataTypeException {
        String identifier = readIdentifier(byteBuffer);
        byte[] bArr = new byte[getFrameSizeSize()];
        if (!isValidID3v2FrameIdentifier(identifier)) {
            AbstractTagItem.logger.config("Invalid identifier:" + identifier);
            byteBuffer.position(byteBuffer.position() - (getFrameIdSize() + (-1)));
            throw new InvalidFrameIdentifierException(getLoggingFilename() + StringUtils.PROCESS_POSTFIX_DELIMITER + identifier + ":is not a valid ID3v2.20 frame");
        }
        byteBuffer.get(bArr, 0, getFrameSizeSize());
        int iDecodeSize = decodeSize(bArr);
        this.frameSize = iDecodeSize;
        if (iDecodeSize < 0) {
            throw new InvalidFrameException(identifier + " has invalid size of:" + this.frameSize);
        }
        if (iDecodeSize == 0) {
            AbstractTagItem.logger.warning("Empty Frame:" + identifier);
            throw new EmptyFrameException(identifier + " is empty frame");
        }
        if (iDecodeSize > byteBuffer.remaining()) {
            AbstractTagItem.logger.warning("Invalid Frame size larger than size before mp3 audio:" + identifier);
            throw new InvalidFrameException(identifier + " is invalid frame");
        }
        AbstractTagItem.logger.fine("Frame Size Is:" + this.frameSize);
        String strConvertFrameID22To24 = ID3Tags.convertFrameID22To24(identifier);
        if (strConvertFrameID22To24 == null && (strConvertFrameID22To24 = ID3Tags.convertFrameID22To23(identifier)) == null) {
            strConvertFrameID22To24 = ID3Tags.isID3v22FrameIdentifier(identifier) ? identifier : "Unsupported";
        }
        AbstractTagItem.logger.fine("Identifier was:" + identifier + " reading using:" + strConvertFrameID22To24);
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        byteBufferSlice.limit(this.frameSize);
        try {
            this.frameBody = readBody(strConvertFrameID22To24, byteBufferSlice, this.frameSize);
        } finally {
            byteBuffer.position(byteBuffer.position() + this.frameSize);
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
        AbstractTagItem.logger.config("Write Frame to Buffer" + getIdentifier());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(getFrameHeaderSize());
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        ((AbstractID3v2FrameBody) this.frameBody).write(byteArrayOutputStream2);
        byteBufferAllocate.put(getIdentifier().getBytes(StandardCharsets.ISO_8859_1), 0, getFrameIdSize());
        encodeSize(byteBufferAllocate, this.frameBody.getSize());
        try {
            byteArrayOutputStream.write(byteBufferAllocate.array());
            byteArrayOutputStream.write(byteArrayOutputStream2.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public ID3v22Frame(AbstractID3v2FrameBody abstractID3v2FrameBody) {
        super(abstractID3v2FrameBody);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0050  */
    public ID3v22Frame(String str) {
        String strConvertFrameID22To23;
        AbstractTagItem.logger.config("Creating empty frame of type" + str);
        this.identifier = str;
        if (!ID3Tags.isID3v22FrameIdentifier(str) || ID3Tags.forceFrameID22To23(str) != null || str.equals(ID3v22Frames.FRAME_ID_V2_ENCRYPTED_FRAME)) {
            strConvertFrameID22To23 = str;
        } else if (!str.equals(ID3v22Frames.FRAME_ID_V2_TYER) && !str.equals(ID3v22Frames.FRAME_ID_V2_TIME)) {
            if (ID3Tags.isID3v22FrameIdentifier(str)) {
                strConvertFrameID22To23 = ID3Tags.convertFrameID22To23(str);
            } else {
                strConvertFrameID22To23 = str;
            }
        } else {
            strConvertFrameID22To23 = ID3v24Frames.FRAME_ID_YEAR;
        }
        try {
            this.frameBody = (AbstractTagFrameBody) Class.forName("com.transsion.audiotagger.tag.id3.framebody.FrameBody" + strConvertFrameID22To23).newInstance();
        } catch (ClassNotFoundException e) {
            AbstractTagItem.logger.log(Level.SEVERE, e.getMessage(), (Throwable) e);
            this.frameBody = new FrameBodyUnsupported(str);
        } catch (IllegalAccessException e2) {
            AbstractTagItem.logger.log(Level.SEVERE, e2.getMessage(), (Throwable) e2);
            throw new RuntimeException(e2);
        } catch (InstantiationException e3) {
            AbstractTagItem.logger.log(Level.SEVERE, e3.getMessage(), (Throwable) e3);
            throw new RuntimeException(e3);
        }
        this.frameBody.setHeader(this);
        AbstractTagItem.logger.config("Created empty frame of type" + this.identifier + "with frame body of" + strConvertFrameID22To23);
    }

    public ID3v22Frame(ID3v22Frame iD3v22Frame) {
        super(iD3v22Frame);
        AbstractTagItem.logger.config("Creating frame from a frame of same version");
    }

    public ID3v22Frame(AbstractID3v2Frame abstractID3v2Frame) throws InvalidFrameException {
        AbstractTagItem.logger.config("Creating frame from a frame of a different version");
        if (!(abstractID3v2Frame instanceof ID3v22Frame)) {
            if (abstractID3v2Frame instanceof ID3v24Frame) {
                createV22FrameFromV23Frame(new ID3v23Frame(abstractID3v2Frame));
            } else if (abstractID3v2Frame instanceof ID3v23Frame) {
                createV22FrameFromV23Frame((ID3v23Frame) abstractID3v2Frame);
            }
            this.frameBody.setHeader(this);
            AbstractTagItem.logger.config("Created frame from a frame of a different version");
            return;
        }
        throw new UnsupportedOperationException("Copy Constructor not called. Please type cast the argument");
    }

    public ID3v22Frame(ByteBuffer byteBuffer, String str) throws InvalidFrameException, InvalidDataTypeException {
        setLoggingFilename(str);
        read(byteBuffer);
    }

    public ID3v22Frame(ByteBuffer byteBuffer) throws InvalidFrameException, InvalidDataTypeException {
        this(byteBuffer, "");
    }
}
