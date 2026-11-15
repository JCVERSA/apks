package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTPE4 extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTPE4() {
    }

    @Override
    public String getIdentifier() {
        return "TPE4";
    }

    public FrameBodyTPE4(FrameBodyTPE4 frameBodyTPE4) {
        super(frameBodyTPE4);
    }

    public FrameBodyTPE4(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTPE4(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
