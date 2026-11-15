package com.transsion.audiotagger.tag.id3;

import com.transsion.audiotagger.audio.mp3.MP3File;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.InvalidFrameException;
import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.PaddingException;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.TagTextField;
import com.transsion.audiotagger.tag.id3.framebody.AbstractID3v2FrameBody;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyEncrypted;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUnsupported;
import com.transsion.audiotagger.tag.id3.valuepair.TextEncoding;
import com.transsion.audiotagger.utils.EqualsUtil;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.logging.Level;

public abstract class AbstractID3v2Frame extends AbstractTagFrame implements TagTextField {
    protected static final String TYPE_FRAME = "frame";
    protected static final String TYPE_FRAME_SIZE = "frameSize";
    protected static final String UNSUPPORTED_ID = "Unsupported";
    EncodingFlags encodingFlags;
    protected int frameSize;
    protected String identifier;
    private String loggingFilename;
    StatusFlags statusFlags;

    public class StatusFlags {
        protected static final String TYPE_FLAGS = "statusFlags";
        protected byte originalFlags;
        protected byte writeFlags;

        public StatusFlags() {
        }

        public void createStructure() {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StatusFlags)) {
                return false;
            }
            StatusFlags statusFlags = (StatusFlags) obj;
            return EqualsUtil.areEqual((long) getOriginalFlags(), (long) statusFlags.getOriginalFlags()) && EqualsUtil.areEqual((long) getWriteFlags(), (long) statusFlags.getWriteFlags());
        }

        public byte getOriginalFlags() {
            return this.originalFlags;
        }

        public byte getWriteFlags() {
            return this.writeFlags;
        }
    }

    public AbstractID3v2Frame() {
        this.identifier = "";
        this.loggingFilename = "";
        this.statusFlags = null;
        this.encodingFlags = null;
    }

    @Override
    public void copyContent(TagField tagField) {
    }

    public void createStructure() {
        MP3File.getStructureFormatter().openHeadingElement("frame", getIdentifier());
        MP3File.getStructureFormatter().closeHeadingElement("frame");
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractID3v2Frame) {
            return super.equals((AbstractID3v2Frame) obj);
        }
        return false;
    }

    @Override
    public String getContent() {
        return getBody().getUserFriendlyValue();
    }

    @Override
    public Charset getEncoding() {
        return TextEncoding.getInstanceOf().getCharsetForId(getBody().getTextEncoding());
    }

    public EncodingFlags getEncodingFlags() {
        return this.encodingFlags;
    }

    public abstract int getFrameHeaderSize();

    public abstract int getFrameIdSize();

    public abstract int getFrameSizeSize();

    @Override
    public String getId() {
        return getIdentifier();
    }

    @Override
    public String getIdentifier() {
        return this.identifier;
    }

    public String getLoggingFilename() {
        return this.loggingFilename;
    }

    @Override
    public byte[] getRawContent() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        write(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public StatusFlags getStatusFlags() {
        return this.statusFlags;
    }

    @Override
    public void isBinary(boolean z) {
    }

    @Override
    public boolean isEmpty() {
        return getBody() == null;
    }

    public boolean isPadding(byte[] bArr) {
        return bArr[0] == 0 && bArr[1] == 0 && bArr[2] == 0 && bArr[3] == 0;
    }

    public AbstractID3v2FrameBody readBody(String str, ByteBuffer byteBuffer, int i) throws InvalidFrameException, InvalidDataTypeException {
        AbstractID3v2FrameBody frameBodyUnsupported;
        AbstractTagItem.logger.finest("Creating framebody:start");
        try {
            frameBodyUnsupported = (AbstractID3v2FrameBody) Class.forName("com.transsion.audiotagger.tag.id3.framebody.FrameBody" + str).getConstructor(Class.forName("java.nio.ByteBuffer"), Integer.TYPE).newInstance(byteBuffer, Integer.valueOf(i));
        } catch (ClassNotFoundException unused) {
            AbstractTagItem.logger.config(getLoggingFilename() + ":Identifier not recognised:" + str + " using FrameBodyUnsupported");
            try {
                frameBodyUnsupported = new FrameBodyUnsupported(byteBuffer, i);
            } catch (InvalidFrameException e) {
                throw e;
            } catch (InvalidTagException e2) {
                throw new InvalidFrameException(e2.getMessage());
            }
        } catch (IllegalAccessException e3) {
            AbstractTagItem.logger.log(Level.SEVERE, getLoggingFilename() + ":Illegal access exception :" + e3.getMessage(), (Throwable) e3);
            throw new RuntimeException(e3.getMessage());
        } catch (InstantiationException e4) {
            AbstractTagItem.logger.log(Level.SEVERE, getLoggingFilename() + ":Instantiation exception:" + e4.getMessage(), (Throwable) e4);
            throw new RuntimeException(e4.getMessage());
        } catch (NoSuchMethodException e5) {
            AbstractTagItem.logger.log(Level.SEVERE, getLoggingFilename() + ":No such method:" + e5.getMessage(), (Throwable) e5);
            throw new RuntimeException(e5.getMessage());
        } catch (InvocationTargetException e6) {
            AbstractTagItem.logger.severe(getLoggingFilename() + ":An error occurred within abstractID3v2FrameBody for identifier:" + str + StringUtils.PROCESS_POSTFIX_DELIMITER + e6.getCause().getMessage());
            if (e6.getCause() instanceof Error) {
                throw ((Error) e6.getCause());
            }
            if (e6.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e6.getCause());
            }
            if (e6.getCause() instanceof InvalidFrameException) {
                throw ((InvalidFrameException) e6.getCause());
            }
            if (e6.getCause() instanceof InvalidDataTypeException) {
                throw ((InvalidDataTypeException) e6.getCause());
            }
            throw new InvalidFrameException(e6.getCause().getMessage());
        }
        AbstractTagItem.logger.finest(getLoggingFilename() + ":Created framebody:end" + frameBodyUnsupported.getIdentifier());
        frameBodyUnsupported.setHeader(this);
        return frameBodyUnsupported;
    }

    public AbstractID3v2FrameBody readEncryptedBody(String str, ByteBuffer byteBuffer, int i) throws InvalidFrameException, InvalidDataTypeException {
        try {
            FrameBodyEncrypted frameBodyEncrypted = new FrameBodyEncrypted(str, byteBuffer, i);
            frameBodyEncrypted.setHeader(this);
            return frameBodyEncrypted;
        } catch (InvalidTagException e) {
            throw new InvalidDataTypeException(e);
        }
    }

    public String readIdentifier(ByteBuffer byteBuffer) throws InvalidFrameException {
        byte[] bArr = new byte[getFrameIdSize()];
        if (getFrameIdSize() <= byteBuffer.remaining()) {
            byteBuffer.get(bArr, 0, getFrameIdSize());
        }
        if (isPadding(bArr)) {
            throw new PaddingException(getLoggingFilename() + ":only padding found");
        }
        if (getFrameHeaderSize() - getFrameIdSize() <= byteBuffer.remaining()) {
            this.identifier = new String(bArr);
            AbstractTagItem.logger.fine(getLoggingFilename() + ":Identifier is" + this.identifier);
            return this.identifier;
        }
        AbstractTagItem.logger.warning(getLoggingFilename() + ":No space to find another frame:");
        throw new InvalidFrameException(getLoggingFilename() + ":No space to find another frame");
    }

    @Override
    public void setContent(String str) {
        throw new UnsupportedOperationException("Not implemented please use the generic tag methods for setting content");
    }

    public void setLoggingFilename(String str) {
        this.loggingFilename = str;
    }

    public abstract void write(ByteArrayOutputStream byteArrayOutputStream);

    public class EncodingFlags {
        protected static final String TYPE_FLAGS = "encodingFlags";
        protected byte flags;

        public EncodingFlags() {
            resetFlags();
        }

        public void createStructure() {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof EncodingFlags) {
                return EqualsUtil.areEqual(getFlags(), ((EncodingFlags) obj).getFlags());
            }
            return false;
        }

        public byte getFlags() {
            return this.flags;
        }

        public void resetFlags() {
            setFlags((byte) 0);
        }

        public void setFlags(byte b) {
            this.flags = b;
        }

        public EncodingFlags(byte b) {
            setFlags(b);
        }
    }

    public AbstractID3v2Frame(AbstractID3v2Frame abstractID3v2Frame) {
        super(abstractID3v2Frame);
        this.identifier = "";
        this.loggingFilename = "";
        this.statusFlags = null;
        this.encodingFlags = null;
    }

    public AbstractID3v2Frame(AbstractID3v2FrameBody abstractID3v2FrameBody) {
        this.identifier = "";
        this.loggingFilename = "";
        this.statusFlags = null;
        this.encodingFlags = null;
        this.frameBody = abstractID3v2FrameBody;
        abstractID3v2FrameBody.setHeader(this);
    }

    public AbstractID3v2Frame(String str) {
        this.identifier = "";
        this.loggingFilename = "";
        this.statusFlags = null;
        this.encodingFlags = null;
        AbstractTagItem.logger.config("Creating empty frame of type" + str);
        this.identifier = str;
        try {
            this.frameBody = (AbstractTagFrameBody) Class.forName("com.transsion.audiotagger.tag.id3.framebody.FrameBody" + str).newInstance();
        } catch (ClassNotFoundException e) {
            AbstractTagItem.logger.severe(e.getMessage());
            this.frameBody = new FrameBodyUnsupported(str);
        } catch (IllegalAccessException e2) {
            AbstractTagItem.logger.log(Level.SEVERE, "IllegalAccessException:" + str, (Throwable) e2);
            throw new RuntimeException(e2);
        } catch (InstantiationException e3) {
            AbstractTagItem.logger.log(Level.SEVERE, "InstantiationException:" + str, (Throwable) e3);
            throw new RuntimeException(e3);
        }
        this.frameBody.setHeader(this);
        if (this instanceof ID3v24Frame) {
            this.frameBody.setTextEncoding(TagOptionSingleton.getInstance().getId3v24DefaultTextEncoding());
        } else if (this instanceof ID3v23Frame) {
            this.frameBody.setTextEncoding(TagOptionSingleton.getInstance().getId3v23DefaultTextEncoding());
        }
        AbstractTagItem.logger.config("Created empty frame of type" + str);
    }

    public AbstractID3v2FrameBody readBody(String str, AbstractID3v2FrameBody abstractID3v2FrameBody) throws InvalidFrameException {
        try {
            AbstractID3v2FrameBody abstractID3v2FrameBody2 = (AbstractID3v2FrameBody) Class.forName("com.transsion.audiotagger.tag.id3.framebody.FrameBody" + str).getConstructor(abstractID3v2FrameBody.getClass()).newInstance(abstractID3v2FrameBody);
            AbstractTagItem.logger.finer("frame Body created" + abstractID3v2FrameBody2.getIdentifier());
            abstractID3v2FrameBody2.setHeader(this);
            return abstractID3v2FrameBody2;
        } catch (ClassNotFoundException unused) {
            AbstractTagItem.logger.config("Identifier not recognised:" + str + " unable to create framebody");
            throw new InvalidFrameException("FrameBody" + str + " does not exist");
        } catch (IllegalAccessException e) {
            AbstractTagItem.logger.log(Level.SEVERE, "Illegal access exception :" + e.getMessage(), (Throwable) e);
            throw new RuntimeException(e.getMessage());
        } catch (InstantiationException e2) {
            AbstractTagItem.logger.log(Level.SEVERE, "Instantiation exception:" + e2.getMessage(), (Throwable) e2);
            throw new RuntimeException(e2.getMessage());
        } catch (NoSuchMethodException e3) {
            AbstractTagItem.logger.log(Level.SEVERE, "No such method:" + e3.getMessage(), (Throwable) e3);
            throw new InvalidFrameException("FrameBody" + str + " does not have a constructor that takes:" + abstractID3v2FrameBody.getClass().getName());
        } catch (InvocationTargetException e4) {
            AbstractTagItem.logger.severe("An error occurred within abstractID3v2FrameBody");
            AbstractTagItem.logger.log(Level.SEVERE, "Invocation target exception:" + e4.getCause().getMessage(), e4.getCause());
            if (!(e4.getCause() instanceof Error)) {
                if (e4.getCause() instanceof RuntimeException) {
                    throw ((RuntimeException) e4.getCause());
                }
                throw new InvalidFrameException(e4.getCause().getMessage());
            }
            throw ((Error) e4.getCause());
        }
    }
}
