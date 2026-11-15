package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTDLY extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTDLY() {
    }

    @Override
    public String getIdentifier() {
        return "TDLY";
    }

    public FrameBodyTDLY(FrameBodyTDLY frameBodyTDLY) {
        super(frameBodyTDLY);
    }

    public FrameBodyTDLY(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTDLY(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
