package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTALB extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTALB() {
    }

    @Override
    public String getIdentifier() {
        return "TALB";
    }

    public FrameBodyTALB(FrameBodyTALB frameBodyTALB) {
        super(frameBodyTALB);
    }

    public FrameBodyTALB(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTALB(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
