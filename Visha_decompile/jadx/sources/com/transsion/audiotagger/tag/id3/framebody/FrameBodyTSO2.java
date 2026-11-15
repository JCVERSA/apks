package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTSO2 extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTSO2() {
    }

    @Override
    public String getIdentifier() {
        return "TSO2";
    }

    public FrameBodyTSO2(FrameBodyTSO2 frameBodyTSO2) {
        super(frameBodyTSO2);
    }

    public FrameBodyTSO2(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTSO2(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
