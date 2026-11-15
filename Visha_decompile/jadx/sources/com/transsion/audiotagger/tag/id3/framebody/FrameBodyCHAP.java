package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberFixedLength;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import java.nio.ByteBuffer;

public class FrameBodyCHAP extends AbstractID3v2FrameBody implements ID3v2ChapterFrameBody {
    public FrameBodyCHAP() {
    }

    @Override
    public String getIdentifier() {
        return "CHAP";
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_ELEMENT_ID, this));
        this.objectList.add(new NumberFixedLength(DataTypes.OBJ_START_TIME, this, 4));
        this.objectList.add(new NumberFixedLength(DataTypes.OBJ_END_TIME, this, 4));
        this.objectList.add(new NumberFixedLength(DataTypes.OBJ_START_OFFSET, this, 4));
        this.objectList.add(new NumberFixedLength(DataTypes.OBJ_END_OFFSET, this, 4));
    }

    public FrameBodyCHAP(FrameBodyCHAP frameBodyCHAP) {
        super(frameBodyCHAP);
    }

    public FrameBodyCHAP(String str, int i, int i2, int i3, int i4) {
        setObjectValue(DataTypes.OBJ_ELEMENT_ID, str);
        setObjectValue(DataTypes.OBJ_START_TIME, Integer.valueOf(i));
        setObjectValue(DataTypes.OBJ_END_TIME, Integer.valueOf(i2));
        setObjectValue(DataTypes.OBJ_START_OFFSET, Integer.valueOf(i3));
        setObjectValue(DataTypes.OBJ_END_OFFSET, Integer.valueOf(i4));
    }

    public FrameBodyCHAP(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
