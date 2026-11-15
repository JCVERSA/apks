package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.nio.ByteBuffer;

public class FrameBodyTRDA extends AbstractFrameBodyTextInfo implements ID3v23FrameBody {
    public FrameBodyTRDA() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_TRDA;
    }

    public FrameBodyTRDA(FrameBodyTRDA frameBodyTRDA) {
        super(frameBodyTRDA);
    }

    public FrameBodyTRDA(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTRDA(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
