package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;

public class BooleanByte extends AbstractDataType {
    int bitPosition;

    public BooleanByte(String str, AbstractTagFrameBody abstractTagFrameBody, int i) {
        super(str, abstractTagFrameBody);
        this.bitPosition = -1;
        if (i >= 0 && i <= 7) {
            this.bitPosition = i;
            return;
        }
        throw new IndexOutOfBoundsException("Bit position needs to be from 0 - 7 : " + i);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof BooleanByte) && this.bitPosition == ((BooleanByte) obj).bitPosition && super.equals(obj);
    }

    public int getBitPosition() {
        return this.bitPosition;
    }

    @Override
    public int getSize() {
        return 1;
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        if (bArr == null) {
            throw new NullPointerException("Byte array is null");
        }
        if (i >= 0 && i < bArr.length) {
            this.value = Boolean.valueOf(((byte) (((byte) (bArr[i] >> this.bitPosition)) & 1)) == 1);
            return;
        }
        throw new IndexOutOfBoundsException("Offset to byte array is out of bounds: offset = " + i + ", array.length = " + bArr.length);
    }

    public String toString() {
        return "" + this.value;
    }

    @Override
    public byte[] writeByteArray() {
        byte[] bArr = new byte[1];
        Object obj = this.value;
        if (obj != null) {
            byte b = ((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0;
            bArr[0] = b;
            bArr[0] = (byte) (b << this.bitPosition);
        }
        return bArr;
    }

    public BooleanByte(BooleanByte booleanByte) {
        super(booleanByte);
        this.bitPosition = -1;
        this.bitPosition = booleanByte.bitPosition;
    }
}
