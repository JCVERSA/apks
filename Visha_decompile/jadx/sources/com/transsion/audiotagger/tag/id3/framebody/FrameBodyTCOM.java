package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTCOM extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTCOM() {
    }

    @Override
    public String getIdentifier() {
        return "TCOM";
    }

    public FrameBodyTCOM(FrameBodyTCOM frameBodyTCOM) {
        super(frameBodyTCOM);
    }

    public FrameBodyTCOM(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTCOM(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
