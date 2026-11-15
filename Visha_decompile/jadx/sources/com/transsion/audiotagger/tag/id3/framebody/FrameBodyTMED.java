package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTMED extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTMED() {
    }

    @Override
    public String getIdentifier() {
        return "TMED";
    }

    public FrameBodyTMED(FrameBodyTMED frameBodyTMED) {
        super(frameBodyTMED);
    }

    public FrameBodyTMED(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTMED(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
