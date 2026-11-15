package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTPE2 extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTPE2() {
    }

    @Override
    public String getIdentifier() {
        return "TPE2";
    }

    public FrameBodyTPE2(FrameBodyTPE2 frameBodyTPE2) {
        super(frameBodyTPE2);
    }

    public FrameBodyTPE2(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTPE2(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
