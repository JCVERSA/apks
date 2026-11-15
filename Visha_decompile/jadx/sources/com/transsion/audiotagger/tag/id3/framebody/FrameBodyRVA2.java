package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.nio.ByteBuffer;

public class FrameBodyRVA2 extends AbstractID3v2FrameBody implements ID3v24FrameBody {
    public FrameBodyRVA2() {
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_RELATIVE_VOLUME_ADJUSTMENT2;
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    public FrameBodyRVA2(FrameBodyRVA2 frameBodyRVA2) {
        super(frameBodyRVA2);
    }

    public FrameBodyRVA2(FrameBodyRVAD frameBodyRVAD) {
        setObjectValue(DataTypes.OBJ_DATA, frameBodyRVAD.getObjectValue(DataTypes.OBJ_DATA));
    }

    public FrameBodyRVA2(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
