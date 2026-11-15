package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.nio.ByteBuffer;

public class FrameBodyTDTG extends AbstractFrameBodyTextInfo implements ID3v24FrameBody {
    public FrameBodyTDTG() {
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_TAGGING_TIME;
    }

    public FrameBodyTDTG(FrameBodyTDTG frameBodyTDTG) {
        super(frameBodyTDTG);
    }

    public FrameBodyTDTG(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTDTG(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
