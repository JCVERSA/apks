package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberFixedLength;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.nio.ByteBuffer;

public class FrameBodySEEK extends AbstractID3v2FrameBody implements ID3v24FrameBody {
    public FrameBodySEEK() {
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_AUDIO_SEEK_POINT_INDEX;
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberFixedLength(DataTypes.OBJ_OFFSET, this, 4));
    }

    public FrameBodySEEK(int i) {
        setObjectValue(DataTypes.OBJ_OFFSET, Integer.valueOf(i));
    }

    public FrameBodySEEK(FrameBodySEEK frameBodySEEK) {
        super(frameBodySEEK);
    }

    public FrameBodySEEK(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
