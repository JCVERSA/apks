package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTIT3 extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTIT3() {
    }

    @Override
    public String getIdentifier() {
        return "TIT3";
    }

    public FrameBodyTIT3(FrameBodyTIT3 frameBodyTIT3) {
        super(frameBodyTIT3);
    }

    public FrameBodyTIT3(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTIT3(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
