package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.ID3Tags;

public class NumberFixedLength extends AbstractDataType {
    public NumberFixedLength(String str, AbstractTagFrameBody abstractTagFrameBody, int i) {
        super(str, abstractTagFrameBody);
        if (i >= 0) {
            this.size = i;
            return;
        }
        throw new IllegalArgumentException("Length is less than zero: " + i);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof NumberFixedLength) && this.size == ((NumberFixedLength) obj).size && super.equals(obj);
    }

    @Override
    public int getSize() {
        return this.size;
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        if (bArr == null) {
            throw new NullPointerException("Byte array is null");
        }
        if (i < 0 || i >= bArr.length) {
            throw new InvalidDataTypeException("Offset to byte array is out of bounds: offset = " + i + ", array.length = " + bArr.length);
        }
        if (this.size + i > bArr.length) {
            throw new InvalidDataTypeException("Offset plus size to byte array is out of bounds: offset = " + i + ", size = " + this.size + " + arr.length " + bArr.length);
        }
        long j = 0;
        for (int i2 = i; i2 < this.size + i; i2++) {
            j = (j << 8) + ((long) (bArr[i2] & 255));
        }
        this.value = Long.valueOf(j);
        AbstractDataType.logger.config("Read NumberFixedlength:" + this.value);
    }

    public void setSize(int i) {
        if (i > 0) {
            this.size = i;
        }
    }

    @Override
    public void setValue(Object obj) {
        if (obj instanceof Number) {
            super.setValue(obj);
            return;
        }
        throw new IllegalArgumentException("Invalid value type for NumberFixedLength:" + obj.getClass());
    }

    public String toString() {
        Object obj = this.value;
        return obj == null ? "" : obj.toString();
    }

    @Override
    public byte[] writeByteArray() {
        byte[] bArr = new byte[this.size];
        Object obj = this.value;
        if (obj != null) {
            long wholeNumber = ID3Tags.getWholeNumber(obj);
            for (int i = this.size - 1; i >= 0; i--) {
                bArr[i] = (byte) (255 & wholeNumber);
                wholeNumber >>= 8;
            }
        }
        return bArr;
    }

    public NumberFixedLength(NumberFixedLength numberFixedLength) {
        super(numberFixedLength);
        this.size = numberFixedLength.size;
    }
}
