package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.nio.ByteBuffer;

public class FrameBodyTDOR extends AbstractFrameBodyTextInfo implements ID3v24FrameBody {
    public FrameBodyTDOR() {
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_ORIGINAL_RELEASE_TIME;
    }

    public FrameBodyTDOR(FrameBodyTDOR frameBodyTDOR) {
        super(frameBodyTDOR);
    }

    public FrameBodyTDOR(FrameBodyTORY frameBodyTORY) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_TEXT, frameBodyTORY.getText());
    }

    public FrameBodyTDOR(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTDOR(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
