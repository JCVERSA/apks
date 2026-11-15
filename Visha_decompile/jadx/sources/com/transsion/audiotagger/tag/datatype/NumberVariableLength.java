package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.ID3Tags;

public class NumberVariableLength extends AbstractDataType {
    private static final int MAXIMUM_NO_OF_DIGITS = 8;
    private static final int MINIMUM_NO_OF_DIGITS = 1;
    int minLength;

    public NumberVariableLength(String str, AbstractTagFrameBody abstractTagFrameBody, int i) {
        super(str, abstractTagFrameBody);
        this.minLength = i;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof NumberVariableLength) && this.minLength == ((NumberVariableLength) obj).minLength && super.equals(obj);
    }

    public int getMaximumLenth() {
        return 8;
    }

    public int getMinimumLength() {
        return this.minLength;
    }

    @Override
    public int getSize() {
        Object obj = this.value;
        int i = 0;
        if (obj == null) {
            return 0;
        }
        long wholeNumber = ID3Tags.getWholeNumber(obj);
        for (int i2 = 1; i2 <= 8; i2++) {
            if ((((byte) wholeNumber) & 255) != 0) {
                i = i2;
            }
            wholeNumber >>= 8;
        }
        int i3 = this.minLength;
        return i3 > i ? i3 : i;
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        if (bArr == null) {
            throw new NullPointerException("Byte array is null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("negativer offset into an array offset:" + i);
        }
        long j = 0;
        if (i < bArr.length) {
            while (i < bArr.length) {
                j = (j << 8) + ((long) (bArr[i] & 255));
                i++;
            }
            this.value = Long.valueOf(j);
            return;
        }
        if (this.minLength == 0) {
            this.value = 0L;
            return;
        }
        throw new InvalidDataTypeException("Offset to byte array is out of bounds: offset = " + i + ", array.length = " + bArr.length);
    }

    public void setMinimumSize(int i) {
        if (i > 0) {
            this.minLength = i;
        }
    }

    public String toString() {
        Object obj = this.value;
        return obj == null ? "" : obj.toString();
    }

    @Override
    public byte[] writeByteArray() {
        int size = getSize();
        if (size == 0) {
            return new byte[0];
        }
        long wholeNumber = ID3Tags.getWholeNumber(this.value);
        byte[] bArr = new byte[size];
        for (int i = size - 1; i >= 0; i--) {
            bArr[i] = (byte) (255 & wholeNumber);
            wholeNumber >>= 8;
        }
        return bArr;
    }

    public NumberVariableLength(NumberVariableLength numberVariableLength) {
        super(numberVariableLength);
        this.minLength = 1;
        this.minLength = numberVariableLength.minLength;
    }
}
