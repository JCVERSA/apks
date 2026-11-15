package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTFLT extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTFLT() {
    }

    @Override
    public String getIdentifier() {
        return "TFLT";
    }

    public FrameBodyTFLT(FrameBodyTFLT frameBodyTFLT) {
        super(frameBodyTFLT);
    }

    public FrameBodyTFLT(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTFLT(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
