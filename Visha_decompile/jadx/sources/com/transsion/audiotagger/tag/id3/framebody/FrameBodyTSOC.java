package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTSOC extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTSOC() {
    }

    @Override
    public String getIdentifier() {
        return "TSOC";
    }

    public FrameBodyTSOC(FrameBodyTSOC frameBodyTSOC) {
        super(frameBodyTSOC);
    }

    public FrameBodyTSOC(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTSOC(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
