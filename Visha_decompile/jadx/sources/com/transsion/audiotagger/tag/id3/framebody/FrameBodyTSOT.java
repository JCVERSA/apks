package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTSOT extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTSOT() {
    }

    @Override
    public String getIdentifier() {
        return "TSOT";
    }

    public FrameBodyTSOT(FrameBodyTSOT frameBodyTSOT) {
        super(frameBodyTSOT);
    }

    public FrameBodyTSOT(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTSOT(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
