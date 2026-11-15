package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyWOAS extends AbstractFrameBodyUrlLink implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyWOAS() {
    }

    @Override
    public String getIdentifier() {
        return "WOAS";
    }

    public FrameBodyWOAS(String str) {
        super(str);
    }

    public FrameBodyWOAS(FrameBodyWOAS frameBodyWOAS) {
        super(frameBodyWOAS);
    }

    public FrameBodyWOAS(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
