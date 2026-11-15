package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.audio.mp3.MP3File;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.InvalidFrameException;
import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.AbstractDataType;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.AbstractTagItem;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

public abstract class AbstractID3v2FrameBody extends AbstractTagFrameBody {
    protected static final String TYPE_BODY = "body";
    private int size;

    public AbstractID3v2FrameBody() {
    }

    @Override
    public void createStructure() {
        MP3File.getStructureFormatter().openHeadingElement("body", "");
        Iterator<AbstractDataType> it = this.objectList.iterator();
        while (it.hasNext()) {
            it.next().createStructure();
        }
        MP3File.getStructureFormatter().closeHeadingElement("body");
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof AbstractID3v2FrameBody) && super.equals(obj);
    }

    @Override
    public abstract String getIdentifier();

    @Override
    public int getSize() {
        return this.size;
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws InvalidTagException {
        int size = getSize();
        AbstractTagItem.logger.config("Reading body for" + getIdentifier() + StringUtils.PROCESS_POSTFIX_DELIMITER + size);
        byte[] bArr = new byte[size];
        byteBuffer.get(bArr);
        int size2 = 0;
        for (AbstractDataType abstractDataType : this.objectList) {
            AbstractTagItem.logger.finest("offset:" + size2);
            if (size2 > size) {
                AbstractTagItem.logger.warning("Invalid Size for FrameBody");
                throw new InvalidFrameException("Invalid size for Frame Body");
            }
            try {
                abstractDataType.readByteArray(bArr, size2);
                size2 += abstractDataType.getSize();
            } catch (InvalidDataTypeException e) {
                AbstractTagItem.logger.warning("Problem reading datatype within Frame Body:" + e.getMessage());
                throw e;
            }
        }
    }

    public void setSize(int i) {
        this.size = i;
    }

    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        AbstractTagItem.logger.config("Writing frame body for" + getIdentifier() + ":Est Size:" + this.size);
        Iterator<AbstractDataType> it = this.objectList.iterator();
        while (it.hasNext()) {
            byte[] bArrWriteByteArray = it.next().writeByteArray();
            if (bArrWriteByteArray != null) {
                try {
                    byteArrayOutputStream.write(bArrWriteByteArray);
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        setSize();
        AbstractTagItem.logger.config("Written frame body for" + getIdentifier() + ":Real Size:" + this.size);
    }

    public AbstractID3v2FrameBody(AbstractID3v2FrameBody abstractID3v2FrameBody) {
        super(abstractID3v2FrameBody);
    }

    public void setSize() {
        this.size = 0;
        Iterator<AbstractDataType> it = this.objectList.iterator();
        while (it.hasNext()) {
            this.size += it.next().getSize();
        }
    }

    public AbstractID3v2FrameBody(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        setSize(i);
        read(byteBuffer);
    }
}
