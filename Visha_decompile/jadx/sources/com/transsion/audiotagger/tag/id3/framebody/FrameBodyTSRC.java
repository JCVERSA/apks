package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTSRC extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTSRC() {
    }

    @Override
    public String getIdentifier() {
        return "TSRC";
    }

    public FrameBodyTSRC(FrameBodyTSRC frameBodyTSRC) {
        super(frameBodyTSRC);
    }

    public FrameBodyTSRC(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTSRC(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
