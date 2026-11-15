package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTOAL extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTOAL() {
    }

    @Override
    public String getIdentifier() {
        return "TOAL";
    }

    public FrameBodyTOAL(FrameBodyTOAL frameBodyTOAL) {
        super(frameBodyTOAL);
    }

    public FrameBodyTOAL(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTOAL(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
