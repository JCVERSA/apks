package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.datatype.AbstractDataType;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.gslb.NetResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractDataTypeList<T extends AbstractDataType> extends AbstractDataType {
    public AbstractDataTypeList(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
        setValue((List) new ArrayList());
    }

    public abstract T createListElement();

    @Override
    public int getSize() {
        Iterator<T> it = getValue().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().getSize();
        }
        return size;
    }

    public int hashCode() {
        if (getValue() != null) {
            return getValue().hashCode();
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
            getValue().clear();
            return;
        }
        while (i < bArr.length) {
            AbstractDataType abstractDataTypeCreateListElement = createListElement();
            abstractDataTypeCreateListElement.readByteArray(bArr, i);
            abstractDataTypeCreateListElement.setBody(this.frameBody);
            getValue().add(abstractDataTypeCreateListElement);
            i += abstractDataTypeCreateListElement.getSize();
        }
    }

    public void setValue(List<T> list) {
        super.setValue((Object) (list == null ? new ArrayList() : new ArrayList(list)));
    }

    public String toString() {
        return getValue() != null ? getValue().toString() : NetResponse.EMPTY_RESPONSE;
    }

    @Override
    public byte[] writeByteArray() {
        AbstractDataType.logger.config("Writing DataTypeList " + getIdentifier());
        byte[] bArr = new byte[getSize()];
        Iterator<T> it = getValue().iterator();
        int length = 0;
        while (it.hasNext()) {
            byte[] bArrWriteByteArray = it.next().writeByteArray();
            System.arraycopy(bArrWriteByteArray, 0, bArr, length, bArrWriteByteArray.length);
            length += bArrWriteByteArray.length;
        }
        return bArr;
    }

    @Override
    public List<T> getValue() {
        return (List) super.getValue();
    }

    public AbstractDataTypeList(AbstractDataTypeList<T> abstractDataTypeList) {
        super(abstractDataTypeList);
    }
}
