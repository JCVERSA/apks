package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberFixedLength;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.nio.ByteBuffer;

public class FrameBodySIGN extends AbstractID3v2FrameBody implements ID3v24FrameBody {
    public FrameBodySIGN() {
    }

    public byte getGroupSymbol() {
        if (getObjectValue(DataTypes.OBJ_GROUP_SYMBOL) != null) {
            return ((Byte) getObjectValue(DataTypes.OBJ_GROUP_SYMBOL)).byteValue();
        }
        return (byte) 0;
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_SIGNATURE;
    }

    public byte[] getSignature() {
        return (byte[]) getObjectValue(DataTypes.OBJ_SIGNATURE);
    }

    public void setGroupSymbol(byte b) {
        setObjectValue(DataTypes.OBJ_GROUP_SYMBOL, Byte.valueOf(b));
    }

    public void setSignature(byte[] bArr) {
        setObjectValue(DataTypes.OBJ_SIGNATURE, bArr);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberFixedLength(DataTypes.OBJ_GROUP_SYMBOL, this, 1));
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_SIGNATURE, this));
    }

    public FrameBodySIGN(FrameBodySIGN frameBodySIGN) {
        super(frameBodySIGN);
    }

    public FrameBodySIGN(byte b, byte[] bArr) {
        setObjectValue(DataTypes.OBJ_GROUP_SYMBOL, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_SIGNATURE, bArr);
    }

    public FrameBodySIGN(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
