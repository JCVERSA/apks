package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyWPAY extends AbstractFrameBodyUrlLink implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyWPAY() {
    }

    @Override
    public String getIdentifier() {
        return "WPAY";
    }

    public FrameBodyWPAY(String str) {
        super(str);
    }

    public FrameBodyWPAY(FrameBodyWPAY frameBodyWPAY) {
        super(frameBodyWPAY);
    }

    public FrameBodyWPAY(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
