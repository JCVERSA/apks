package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTCOP extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTCOP() {
    }

    @Override
    public String getIdentifier() {
        return "TCOP";
    }

    public FrameBodyTCOP(FrameBodyTCOP frameBodyTCOP) {
        super(frameBodyTCOP);
    }

    public FrameBodyTCOP(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTCOP(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
