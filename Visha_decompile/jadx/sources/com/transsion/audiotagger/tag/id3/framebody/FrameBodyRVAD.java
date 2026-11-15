package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.nio.ByteBuffer;

public class FrameBodyRVAD extends AbstractID3v2FrameBody implements ID3v23FrameBody {
    public FrameBodyRVAD() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_RELATIVE_VOLUME_ADJUSTMENT;
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    public FrameBodyRVAD(FrameBodyRVAD frameBodyRVAD) {
        super(frameBodyRVAD);
    }

    public FrameBodyRVAD(FrameBodyRVA2 frameBodyRVA2) {
        setObjectValue(DataTypes.OBJ_DATA, frameBodyRVA2.getObjectValue(DataTypes.OBJ_DATA));
    }

    public FrameBodyRVAD(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
