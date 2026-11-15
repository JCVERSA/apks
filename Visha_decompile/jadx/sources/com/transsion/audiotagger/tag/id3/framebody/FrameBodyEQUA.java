package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;

public class FrameBodyEQUA extends AbstractID3v2FrameBody implements ID3v23FrameBody {
    public FrameBodyEQUA() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_EQUALISATION;
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    public FrameBodyEQUA(FrameBodyEQUA frameBodyEQUA) {
        super(frameBodyEQUA);
    }
}
