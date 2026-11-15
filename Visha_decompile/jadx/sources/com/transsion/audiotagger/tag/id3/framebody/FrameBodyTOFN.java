package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTOFN extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTOFN() {
    }

    @Override
    public String getIdentifier() {
        return "TOFN";
    }

    public FrameBodyTOFN(FrameBodyTOFN frameBodyTOFN) {
        super(frameBodyTOFN);
    }

    public FrameBodyTOFN(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTOFN(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
