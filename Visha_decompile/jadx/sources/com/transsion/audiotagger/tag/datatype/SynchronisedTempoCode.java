package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.valuepair.EventTimingTypes;

public class SynchronisedTempoCode extends AbstractDataType implements Cloneable {
    private TempoCode tempo;
    private NumberFixedLength timestamp;

    public SynchronisedTempoCode(SynchronisedTempoCode synchronisedTempoCode) {
        super(synchronisedTempoCode);
        this.tempo = new TempoCode(DataTypes.OBJ_SYNCHRONISED_TEMPO_DATA, null, 1);
        this.timestamp = new NumberFixedLength("DateTime", null, 4);
        this.tempo.setValue(synchronisedTempoCode.tempo.getValue());
        this.timestamp.setValue(synchronisedTempoCode.timestamp.getValue());
    }

    public Object clone() throws CloneNotSupportedException {
        return new SynchronisedTempoCode(this);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        SynchronisedTempoCode synchronisedTempoCode = (SynchronisedTempoCode) obj;
        return getTempo() == synchronisedTempoCode.getTempo() && getTimestamp() == synchronisedTempoCode.getTimestamp();
    }

    @Override
    public int getSize() {
        return this.tempo.getSize() + this.timestamp.getSize();
    }

    public int getTempo() {
        return ((Number) this.tempo.getValue()).intValue();
    }

    public long getTimestamp() {
        return ((Number) this.timestamp.getValue()).longValue();
    }

    public int hashCode() {
        TempoCode tempoCode = this.tempo;
        int iHashCode = (tempoCode != null ? tempoCode.hashCode() : 0) * 31;
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
        this.tempo.readByteArray(bArr, i);
        this.timestamp.readByteArray(bArr, i + this.tempo.getSize());
        this.timestamp.getSize();
    }

    @Override
    public void setBody(AbstractTagFrameBody abstractTagFrameBody) {
        super.setBody(abstractTagFrameBody);
        this.tempo.setBody(abstractTagFrameBody);
        this.timestamp.setBody(abstractTagFrameBody);
    }

    public void setTempo(int i) {
        if (i >= 0 && i <= 510) {
            this.tempo.setValue(Integer.valueOf(i));
            return;
        }
        throw new IllegalArgumentException("Tempo must be a positive value less than 511: " + i);
    }

    public void setTimestamp(long j) {
        this.timestamp.setValue(Long.valueOf(j));
    }

    public String toString() {
        return "" + getTempo() + " (\"" + EventTimingTypes.getInstanceOf().getValueForId(getTempo()) + "\"), " + getTimestamp();
    }

    @Override
    public byte[] writeByteArray() {
        byte[] bArrWriteByteArray = this.tempo.writeByteArray();
        byte[] bArrWriteByteArray2 = this.timestamp.writeByteArray();
        if (bArrWriteByteArray == null || bArrWriteByteArray2 == null) {
            return null;
        }
        byte[] bArr = new byte[bArrWriteByteArray.length + bArrWriteByteArray2.length];
        System.arraycopy(bArrWriteByteArray, 0, bArr, 0, bArrWriteByteArray.length);
        System.arraycopy(bArrWriteByteArray2, 0, bArr, bArrWriteByteArray.length, bArrWriteByteArray2.length);
        return bArr;
    }

    public SynchronisedTempoCode(String str, AbstractTagFrameBody abstractTagFrameBody) {
        this(str, abstractTagFrameBody, 0, 0L);
    }

    public SynchronisedTempoCode(String str, AbstractTagFrameBody abstractTagFrameBody, int i, long j) {
        super(str, abstractTagFrameBody);
        this.tempo = new TempoCode(DataTypes.OBJ_SYNCHRONISED_TEMPO_DATA, null, 1);
        this.timestamp = new NumberFixedLength("DateTime", null, 4);
        setBody(abstractTagFrameBody);
        this.tempo.setValue(Integer.valueOf(i));
        this.timestamp.setValue(Long.valueOf(j));
    }
}
