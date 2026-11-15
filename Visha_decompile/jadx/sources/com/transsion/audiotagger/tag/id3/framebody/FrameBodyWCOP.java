package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyWCOP extends AbstractFrameBodyUrlLink implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyWCOP() {
    }

    @Override
    public String getIdentifier() {
        return "WCOP";
    }

    public FrameBodyWCOP(String str) {
        super(str);
    }

    public FrameBodyWCOP(FrameBodyWCOP frameBodyWCOP) {
        super(frameBodyWCOP);
    }

    public FrameBodyWCOP(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
