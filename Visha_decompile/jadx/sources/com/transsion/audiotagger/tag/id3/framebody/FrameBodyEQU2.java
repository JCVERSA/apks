package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.nio.ByteBuffer;

public class FrameBodyEQU2 extends AbstractID3v2FrameBody implements ID3v24FrameBody {
    public FrameBodyEQU2() {
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_EQUALISATION2;
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    public FrameBodyEQU2(FrameBodyEQU2 frameBodyEQU2) {
        super(frameBodyEQU2);
    }

    public FrameBodyEQU2(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
