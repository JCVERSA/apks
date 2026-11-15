package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTIT2 extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTIT2() {
    }

    @Override
    public String getIdentifier() {
        return "TIT2";
    }

    public FrameBodyTIT2(FrameBodyTIT2 frameBodyTIT2) {
        super(frameBodyTIT2);
    }

    public FrameBodyTIT2(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTIT2(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
