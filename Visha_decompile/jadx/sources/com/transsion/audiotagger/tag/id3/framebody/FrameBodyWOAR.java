package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyWOAR extends AbstractFrameBodyUrlLink implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyWOAR() {
    }

    @Override
    public String getIdentifier() {
        return "WOAR";
    }

    public FrameBodyWOAR(String str) {
        super(str);
    }

    public FrameBodyWOAR(FrameBodyWOAR frameBodyWOAR) {
        super(frameBodyWOAR);
    }

    public FrameBodyWOAR(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
