package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTSSE extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTSSE() {
    }

    @Override
    public String getIdentifier() {
        return "TSSE";
    }

    public FrameBodyTSSE(FrameBodyTSSE frameBodyTSSE) {
        super(frameBodyTSSE);
    }

    public FrameBodyTSSE(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTSSE(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
