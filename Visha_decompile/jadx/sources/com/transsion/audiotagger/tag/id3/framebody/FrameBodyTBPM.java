package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTBPM extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTBPM() {
    }

    @Override
    public String getIdentifier() {
        return "TBPM";
    }

    public FrameBodyTBPM(FrameBodyTBPM frameBodyTBPM) {
        super(frameBodyTBPM);
    }

    public FrameBodyTBPM(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTBPM(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
