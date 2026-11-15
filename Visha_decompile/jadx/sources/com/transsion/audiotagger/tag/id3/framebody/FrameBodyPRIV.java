package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import java.nio.ByteBuffer;

public class FrameBodyPRIV extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyPRIV() {
        setObjectValue(DataTypes.OBJ_OWNER, "");
        setObjectValue(DataTypes.OBJ_DATA, new byte[0]);
    }

    public byte[] getData() {
        return (byte[]) getObjectValue(DataTypes.OBJ_DATA);
    }

    @Override
    public String getIdentifier() {
        return "PRIV";
    }

    public String getOwner() {
        return (String) getObjectValue(DataTypes.OBJ_OWNER);
    }

    public void setData(byte[] bArr) {
        setObjectValue(DataTypes.OBJ_DATA, bArr);
    }

    public void setOwner(String str) {
        setObjectValue(DataTypes.OBJ_OWNER, str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_OWNER, this));
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    public FrameBodyPRIV(FrameBodyPRIV frameBodyPRIV) {
        super(frameBodyPRIV);
    }

    public FrameBodyPRIV(String str, byte[] bArr) {
        setObjectValue(DataTypes.OBJ_OWNER, str);
        setObjectValue(DataTypes.OBJ_DATA, bArr);
    }

    public FrameBodyPRIV(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
