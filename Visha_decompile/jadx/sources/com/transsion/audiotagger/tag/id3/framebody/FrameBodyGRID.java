package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberFixedLength;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import java.nio.ByteBuffer;

public class FrameBodyGRID extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyGRID() {
    }

    public byte getGroupSymbol() {
        if (getObjectValue(DataTypes.OBJ_GROUP_SYMBOL) != null) {
            return ((Long) getObjectValue(DataTypes.OBJ_GROUP_SYMBOL)).byteValue();
        }
        return (byte) 0;
    }

    @Override
    public String getIdentifier() {
        return "GRID";
    }

    public String getOwner() {
        return (String) getObjectValue(DataTypes.OBJ_OWNER);
    }

    public void setGroupSymbol(byte b) {
        setObjectValue(DataTypes.OBJ_GROUP_SYMBOL, Byte.valueOf(b));
    }

    public void setOwner(String str) {
        setObjectValue(DataTypes.OBJ_OWNER, str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_OWNER, this));
        this.objectList.add(new NumberFixedLength(DataTypes.OBJ_GROUP_SYMBOL, this, 1));
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_GROUP_DATA, this));
    }

    public FrameBodyGRID(FrameBodyGRID frameBodyGRID) {
        super(frameBodyGRID);
    }

    public FrameBodyGRID(String str, byte b, byte[] bArr) {
        setObjectValue(DataTypes.OBJ_OWNER, str);
        setObjectValue(DataTypes.OBJ_GROUP_SYMBOL, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_GROUP_DATA, bArr);
    }

    public FrameBodyGRID(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
