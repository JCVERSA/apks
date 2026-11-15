package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTIT1 extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTIT1() {
    }

    @Override
    public String getIdentifier() {
        return "TIT1";
    }

    public FrameBodyTIT1(FrameBodyTIT1 frameBodyTIT1) {
        super(frameBodyTIT1);
    }

    public FrameBodyTIT1(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTIT1(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
