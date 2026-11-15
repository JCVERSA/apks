package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTPUB extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTPUB() {
    }

    @Override
    public String getIdentifier() {
        return "TPUB";
    }

    public FrameBodyTPUB(FrameBodyTPUB frameBodyTPUB) {
        super(frameBodyTPUB);
    }

    public FrameBodyTPUB(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTPUB(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
