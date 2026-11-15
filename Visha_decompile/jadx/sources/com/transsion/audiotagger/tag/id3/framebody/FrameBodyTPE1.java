package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTPE1 extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTPE1() {
    }

    @Override
    public String getIdentifier() {
        return "TPE1";
    }

    public FrameBodyTPE1(FrameBodyTPE1 frameBodyTPE1) {
        super(frameBodyTPE1);
    }

    public FrameBodyTPE1(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTPE1(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
