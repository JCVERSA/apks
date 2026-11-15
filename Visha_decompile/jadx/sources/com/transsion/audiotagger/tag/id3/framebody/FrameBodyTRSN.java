package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTRSN extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTRSN() {
    }

    @Override
    public String getIdentifier() {
        return "TRSN";
    }

    public FrameBodyTRSN(FrameBodyTRSN frameBodyTRSN) {
        super(frameBodyTRSN);
    }

    public FrameBodyTRSN(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTRSN(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
