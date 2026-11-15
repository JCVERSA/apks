package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTOPE extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTOPE() {
    }

    @Override
    public String getIdentifier() {
        return "TOPE";
    }

    public FrameBodyTOPE(FrameBodyTOPE frameBodyTOPE) {
        super(frameBodyTOPE);
    }

    public FrameBodyTOPE(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTOPE(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
