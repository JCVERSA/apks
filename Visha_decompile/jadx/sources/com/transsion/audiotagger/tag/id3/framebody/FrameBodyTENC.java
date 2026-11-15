package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTENC extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTENC() {
    }

    @Override
    public String getIdentifier() {
        return "TENC";
    }

    public FrameBodyTENC(FrameBodyTENC frameBodyTENC) {
        super(frameBodyTENC);
    }

    public FrameBodyTENC(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTENC(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
