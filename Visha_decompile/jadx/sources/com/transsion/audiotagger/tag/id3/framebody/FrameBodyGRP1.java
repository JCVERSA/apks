package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyGRP1 extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyGRP1() {
    }

    @Override
    public String getIdentifier() {
        return "GRP1";
    }

    public FrameBodyGRP1(FrameBodyGRP1 frameBodyGRP1) {
        super(frameBodyGRP1);
    }

    public FrameBodyGRP1(byte b, String str) {
        super(b, str);
    }

    public FrameBodyGRP1(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
