package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.nio.ByteBuffer;

public class FrameBodyTPRO extends AbstractFrameBodyTextInfo implements ID3v24FrameBody {
    public FrameBodyTPRO() {
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_PRODUCED_NOTICE;
    }

    public FrameBodyTPRO(FrameBodyTPRO frameBodyTPRO) {
        super(frameBodyTPRO);
    }

    public FrameBodyTPRO(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTPRO(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
