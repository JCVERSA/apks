package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.NumberVariableLength;
import java.nio.ByteBuffer;

public class FrameBodyPOSS extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyPOSS() {
    }

    @Override
    public String getIdentifier() {
        return "POSS";
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TIME_STAMP_FORMAT, this, 1));
        this.objectList.add(new NumberVariableLength(DataTypes.OBJ_POSITION, this, 1));
    }

    public FrameBodyPOSS(FrameBodyPOSS frameBodyPOSS) {
        super(frameBodyPOSS);
    }

    public FrameBodyPOSS(byte b, long j) {
        setObjectValue(DataTypes.OBJ_TIME_STAMP_FORMAT, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_POSITION, Long.valueOf(j));
    }

    public FrameBodyPOSS(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
