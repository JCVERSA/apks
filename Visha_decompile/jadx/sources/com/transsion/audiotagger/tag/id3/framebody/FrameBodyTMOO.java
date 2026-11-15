package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.nio.ByteBuffer;

public class FrameBodyTMOO extends AbstractFrameBodyTextInfo implements ID3v24FrameBody {
    public FrameBodyTMOO() {
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_MOOD;
    }

    public FrameBodyTMOO(FrameBodyTMOO frameBodyTMOO) {
        super(frameBodyTMOO);
    }

    public FrameBodyTMOO(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTMOO(FrameBodyTXXX frameBodyTXXX) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(frameBodyTXXX.getTextEncoding()));
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_TEXT, frameBodyTXXX.getText());
    }

    public FrameBodyTMOO(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
