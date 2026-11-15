package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import java.nio.ByteBuffer;

public class FrameBodyMCDI extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyMCDI() {
        setObjectValue(DataTypes.OBJ_DATA, new byte[0]);
    }

    @Override
    public String getIdentifier() {
        return "MCDI";
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    public FrameBodyMCDI(FrameBodyMCDI frameBodyMCDI) {
        super(frameBodyMCDI);
    }

    public FrameBodyMCDI(byte[] bArr) {
        setObjectValue(DataTypes.OBJ_DATA, bArr);
    }

    public FrameBodyMCDI(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
