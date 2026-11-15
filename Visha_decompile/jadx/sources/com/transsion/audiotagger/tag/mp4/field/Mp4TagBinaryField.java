package com.transsion.audiotagger.tag.mp4.field;

import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.mp4.Mp4TagField;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class Mp4TagBinaryField extends Mp4TagField {
    protected byte[] dataBytes;
    protected int dataSize;
    protected boolean isBinary;

    public Mp4TagBinaryField(String str) {
        super(str);
        this.isBinary = false;
    }

    @Override
    public void build(ByteBuffer byteBuffer) {
        this.dataSize = new Mp4BoxHeader(byteBuffer).getDataLength();
        byteBuffer.position(byteBuffer.position() + 8);
        this.dataBytes = new byte[this.dataSize - 8];
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
        if (tagField instanceof Mp4TagBinaryField) {
            this.dataBytes = ((Mp4TagBinaryField) tagField).getData();
            this.isBinary = tagField.isBinary();
        }
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
    public boolean isBinary() {
        return this.isBinary;
    }

    @Override
    public boolean isEmpty() {
        return this.dataBytes.length == 0;
    }

    public void setData(byte[] bArr) {
        this.dataBytes = bArr;
    }

    public Mp4TagBinaryField(String str, byte[] bArr) {
        super(str);
        this.isBinary = false;
        this.dataBytes = bArr;
    }

    public Mp4TagBinaryField(String str, ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        super(str, byteBuffer);
        this.isBinary = false;
    }
}
