package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyWORS extends AbstractFrameBodyUrlLink implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyWORS() {
    }

    @Override
    public String getIdentifier() {
        return "WORS";
    }

    public FrameBodyWORS(String str) {
        super(str);
    }

    public FrameBodyWORS(FrameBodyWORS frameBodyWORS) {
        super(frameBodyWORS);
    }

    public FrameBodyWORS(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
