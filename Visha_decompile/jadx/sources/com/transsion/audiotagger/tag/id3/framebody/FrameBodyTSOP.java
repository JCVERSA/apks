package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTSOP extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTSOP() {
    }

    @Override
    public String getIdentifier() {
        return "TSOP";
    }

    public FrameBodyTSOP(FrameBodyTSOP frameBodyTSOP) {
        super(frameBodyTSOP);
    }

    public FrameBodyTSOP(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTSOP(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
