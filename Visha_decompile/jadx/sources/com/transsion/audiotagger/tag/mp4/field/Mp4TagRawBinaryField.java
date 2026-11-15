package com.transsion.audiotagger.tag.mp4.field;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.mp4.Mp4TagField;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class Mp4TagRawBinaryField extends Mp4TagField {
    protected byte[] dataBytes;
    protected int dataSize;

    public Mp4TagRawBinaryField(Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        super(mp4BoxHeader.getId());
        this.dataSize = mp4BoxHeader.getDataLength();
        build(byteBuffer);
    }

    @Override
    public void build(ByteBuffer byteBuffer) {
        this.dataBytes = new byte[this.dataSize];
        int i = 0;
        while (true) {
            byte[] bArr = this.dataBytes;
            if (i >= bArr.length) {
                return;
            }
            bArr[i] = byteBuffer.get();
            i++;
        }
    }

    @Override
    public void copyContent(TagField tagField) {
        throw new UnsupportedOperationException("not done");
    }

    public byte[] getData() {
        return this.dataBytes;
    }

    @Override
    public byte[] getDataBytes() throws UnsupportedEncodingException {
        return this.dataBytes;
    }

    public int getDataSize() {
        return this.dataSize;
    }

    @Override
    public Mp4FieldType getFieldType() {
        return Mp4FieldType.IMPLICIT;
    }

    @Override
    public byte[] getRawContent() throws UnsupportedEncodingException {
        Mp4TagField.logger.fine("Getting Raw data for:" + getId());
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(Utils.getSizeBEInt32(this.dataSize + 8));
            byteArrayOutputStream.write(getId().getBytes(StandardCharsets.ISO_8859_1));
            byteArrayOutputStream.write(this.dataBytes);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean isBinary() {
        return true;
    }

    @Override
    public boolean isEmpty() {
        return this.dataBytes.length == 0;
    }

    public void setData(byte[] bArr) {
        this.dataBytes = bArr;
    }
}
