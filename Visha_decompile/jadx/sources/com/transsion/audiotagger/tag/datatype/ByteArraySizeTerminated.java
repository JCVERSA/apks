package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;

public class ByteArraySizeTerminated extends AbstractDataType {
    public ByteArraySizeTerminated(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof ByteArraySizeTerminated) && super.equals(obj);
    }

    @Override
    public int getSize() {
        Object obj = this.value;
        if (obj != null) {
            return ((byte[]) obj).length;
        }
        return 0;
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        if (bArr == null) {
            throw new NullPointerException("Byte array is null");
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("Offset to byte array is out of bounds: offset = " + i + ", array.length = " + bArr.length);
        }
        if (i >= bArr.length) {
            this.value = null;
            return;
        }
        int length = bArr.length - i;
        byte[] bArr2 = new byte[length];
        this.value = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, length);
    }

    public String toString() {
        return getSize() + " bytes";
    }

    @Override
    public byte[] writeByteArray() {
        AbstractDataType.logger.config("Writing byte array" + getIdentifier());
        return (byte[]) this.value;
    }

    public ByteArraySizeTerminated(ByteArraySizeTerminated byteArraySizeTerminated) {
        super(byteArraySizeTerminated);
    }
}
