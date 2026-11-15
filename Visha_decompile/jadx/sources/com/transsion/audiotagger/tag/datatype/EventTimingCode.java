package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.valuepair.EventTimingTypes;

public class EventTimingCode extends AbstractDataType implements Cloneable {
    private static final int SIZE = 5;
    private NumberFixedLength timestamp;
    private NumberHashMap type;

    public EventTimingCode(EventTimingCode eventTimingCode) {
        super(eventTimingCode);
        this.type = new NumberHashMap(DataTypes.OBJ_TYPE_OF_EVENT, null, 1);
        this.timestamp = new NumberFixedLength("DateTime", null, 4);
        this.type.setValue(eventTimingCode.type.getValue());
        this.timestamp.setValue(eventTimingCode.timestamp.getValue());
    }

    public Object clone() throws CloneNotSupportedException {
        return new EventTimingCode(this);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        EventTimingCode eventTimingCode = (EventTimingCode) obj;
        return getType() == eventTimingCode.getType() && getTimestamp() == eventTimingCode.getTimestamp();
    }

    @Override
    public int getSize() {
        return 5;
    }

    public long getTimestamp() {
        return ((Number) this.timestamp.getValue()).longValue();
    }

    public int getType() {
        return ((Number) this.type.getValue()).intValue();
    }

    public int hashCode() {
        NumberHashMap numberHashMap = this.type;
        int iHashCode = (numberHashMap != null ? numberHashMap.hashCode() : 0) * 31;
        NumberFixedLength numberFixedLength = this.timestamp;
        return iHashCode + (numberFixedLength != null ? numberFixedLength.hashCode() : 0);
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        int size = getSize();
        AbstractDataType.logger.finest("offset:" + i);
        if (i > bArr.length - size) {
            AbstractDataType.logger.warning("Invalid size for FrameBody");
            throw new InvalidDataTypeException("Invalid size for FrameBody");
        }
        this.type.readByteArray(bArr, i);
        this.timestamp.readByteArray(bArr, i + this.type.getSize());
        this.timestamp.getSize();
    }

    @Override
    public void setBody(AbstractTagFrameBody abstractTagFrameBody) {
        super.setBody(abstractTagFrameBody);
        this.type.setBody(abstractTagFrameBody);
        this.timestamp.setBody(abstractTagFrameBody);
    }

    public void setTimestamp(long j) {
        this.timestamp.setValue(Long.valueOf(j));
    }

    public void setType(int i) {
        this.type.setValue(Integer.valueOf(i));
    }

    public String toString() {
        return "" + getType() + " (\"" + EventTimingTypes.getInstanceOf().getValueForId(getType()) + "\"), " + getTimestamp();
    }

    @Override
    public byte[] writeByteArray() {
        byte[] bArrWriteByteArray = this.type.writeByteArray();
        byte[] bArrWriteByteArray2 = this.timestamp.writeByteArray();
        if (bArrWriteByteArray == null || bArrWriteByteArray2 == null) {
            return null;
        }
        byte[] bArr = new byte[bArrWriteByteArray.length + bArrWriteByteArray2.length];
        System.arraycopy(bArrWriteByteArray, 0, bArr, 0, bArrWriteByteArray.length);
        System.arraycopy(bArrWriteByteArray2, 0, bArr, bArrWriteByteArray.length, bArrWriteByteArray2.length);
        return bArr;
    }

    public EventTimingCode(String str, AbstractTagFrameBody abstractTagFrameBody) {
        this(str, abstractTagFrameBody, 0, 0L);
    }

    public EventTimingCode(String str, AbstractTagFrameBody abstractTagFrameBody, int i, long j) {
        super(str, abstractTagFrameBody);
        this.type = new NumberHashMap(DataTypes.OBJ_TYPE_OF_EVENT, null, 1);
        this.timestamp = new NumberFixedLength("DateTime", null, 4);
        setBody(abstractTagFrameBody);
        this.type.setValue(Integer.valueOf(i));
        this.timestamp.setValue(Long.valueOf(j));
    }
}
