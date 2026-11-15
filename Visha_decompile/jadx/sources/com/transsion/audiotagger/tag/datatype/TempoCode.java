package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.ID3Tags;

public class TempoCode extends AbstractDataType {
    private static final int MAXIMUM_NO_OF_DIGITS = 2;
    private static final int MINIMUM_NO_OF_DIGITS = 1;

    public TempoCode(TempoCode tempoCode) {
        super(tempoCode);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof TempoCode) && super.equals(obj);
    }

    @Override
    public int getSize() {
        Object obj = this.value;
        if (obj == null) {
            return 0;
        }
        return ID3Tags.getWholeNumber(obj) < 255 ? 1 : 2;
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        if (bArr == null) {
            throw new NullPointerException("Byte array is null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("negative offset into an array offset:" + i);
        }
        if (i < bArr.length) {
            long j = bArr[i] & 255;
            if (j == 255) {
                j += (long) (bArr[i + 1] & 255);
            }
            this.value = Long.valueOf(j);
            return;
        }
        throw new InvalidDataTypeException("Offset to byte array is out of bounds: offset = " + i + ", array.length = " + bArr.length);
    }

    public String toString() {
        Object obj = this.value;
        return obj == null ? "" : obj.toString();
    }

    @Override
    public byte[] writeByteArray() {
        byte[] bArr = new byte[getSize()];
        long wholeNumber = ID3Tags.getWholeNumber(this.value);
        char c = 0;
        if (wholeNumber >= 255) {
            bArr[0] = -1;
            wholeNumber -= 255;
            c = 1;
        }
        bArr[c] = (byte) (wholeNumber & 255);
        return bArr;
    }

    public TempoCode(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody, 0);
    }

    public TempoCode(String str, AbstractTagFrameBody abstractTagFrameBody, Object obj) {
        super(str, abstractTagFrameBody, obj);
    }
}
