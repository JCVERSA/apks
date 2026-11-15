package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTEXT extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTEXT() {
    }

    @Override
    public String getIdentifier() {
        return "TEXT";
    }

    public FrameBodyTEXT(FrameBodyTEXT frameBodyTEXT) {
        super(frameBodyTEXT);
    }

    public FrameBodyTEXT(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTEXT(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
