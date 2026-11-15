package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;

public class BooleanString extends AbstractDataType {
    public BooleanString(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof BooleanString) && super.equals(obj);
    }

    @Override
    public int getSize() {
        return 1;
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        this.value = Boolean.valueOf(bArr[i] != 48);
    }

    public String toString() {
        return "" + this.value;
    }

    @Override
    public byte[] writeByteArray() {
        byte[] bArr = new byte[1];
        Object obj = this.value;
        if (obj == null || ((Boolean) obj).booleanValue()) {
            bArr[0] = 48;
        } else {
            bArr[0] = 49;
        }
        return bArr;
    }

    public BooleanString(BooleanString booleanString) {
        super(booleanString);
    }
}
