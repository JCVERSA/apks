package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTOWN extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTOWN() {
    }

    @Override
    public String getIdentifier() {
        return "TOWN";
    }

    public FrameBodyTOWN(FrameBodyTOWN frameBodyTOWN) {
        super(frameBodyTOWN);
    }

    public FrameBodyTOWN(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTOWN(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
