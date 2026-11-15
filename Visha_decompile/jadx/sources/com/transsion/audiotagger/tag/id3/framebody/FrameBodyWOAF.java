package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyWOAF extends AbstractFrameBodyUrlLink implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyWOAF() {
    }

    @Override
    public String getIdentifier() {
        return "WOAF";
    }

    public FrameBodyWOAF(String str) {
        super(str);
    }

    public FrameBodyWOAF(FrameBodyWOAF frameBodyWOAF) {
        super(frameBodyWOAF);
    }

    public FrameBodyWOAF(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
