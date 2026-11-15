package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;

public class FrameBodyMLLT extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyMLLT() {
    }

    @Override
    public String getIdentifier() {
        return "MLLT";
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    public FrameBodyMLLT(FrameBodyMLLT frameBodyMLLT) {
        super(frameBodyMLLT);
    }
}
