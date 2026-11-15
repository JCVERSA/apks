package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTPE3 extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTPE3() {
    }

    @Override
    public String getIdentifier() {
        return "TPE3";
    }

    public FrameBodyTPE3(FrameBodyTPE3 frameBodyTPE3) {
        super(frameBodyTPE3);
    }

    public FrameBodyTPE3(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTPE3(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
