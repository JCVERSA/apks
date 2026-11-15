package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTSST extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTSST() {
    }

    @Override
    public String getIdentifier() {
        return "TSST";
    }

    public FrameBodyTSST(FrameBodyTSST frameBodyTSST) {
        super(frameBodyTSST);
    }

    public FrameBodyTSST(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTSST(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
