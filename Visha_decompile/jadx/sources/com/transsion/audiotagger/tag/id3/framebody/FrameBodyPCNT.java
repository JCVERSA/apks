package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberVariableLength;
import java.nio.ByteBuffer;

public class FrameBodyPCNT extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    private static final int COUNTER_MINIMUM_FIELD_SIZE = 4;

    public FrameBodyPCNT() {
        setObjectValue(DataTypes.OBJ_NUMBER, 0L);
    }

    public long getCounter() {
        return ((Number) getObjectValue(DataTypes.OBJ_NUMBER)).longValue();
    }

    @Override
    public String getIdentifier() {
        return "PCNT";
    }

    public void setCounter(long j) {
        setObjectValue(DataTypes.OBJ_NUMBER, Long.valueOf(j));
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberVariableLength(DataTypes.OBJ_NUMBER, this, 4));
    }

    public FrameBodyPCNT(FrameBodyPCNT frameBodyPCNT) {
        super(frameBodyPCNT);
    }

    public FrameBodyPCNT(long j) {
        setObjectValue(DataTypes.OBJ_NUMBER, Long.valueOf(j));
    }

    public FrameBodyPCNT(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
