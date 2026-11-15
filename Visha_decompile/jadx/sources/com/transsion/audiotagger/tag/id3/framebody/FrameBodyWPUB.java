package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyWPUB extends AbstractFrameBodyUrlLink implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyWPUB() {
    }

    @Override
    public String getIdentifier() {
        return "WPUB";
    }

    public FrameBodyWPUB(String str) {
        super(str);
    }

    public FrameBodyWPUB(FrameBodyWPUB frameBodyWPUB) {
        super(frameBodyWPUB);
    }

    public FrameBodyWPUB(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
