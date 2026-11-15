package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyWCOM extends AbstractFrameBodyUrlLink implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyWCOM() {
    }

    @Override
    public String getIdentifier() {
        return "WCOM";
    }

    public FrameBodyWCOM(String str) {
        super(str);
    }

    public FrameBodyWCOM(FrameBodyWCOM frameBodyWCOM) {
        super(frameBodyWCOM);
    }

    public FrameBodyWCOM(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
