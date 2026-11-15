package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTRSO extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTRSO() {
    }

    @Override
    public String getIdentifier() {
        return "TRSO";
    }

    public FrameBodyTRSO(FrameBodyTRSO frameBodyTRSO) {
        super(frameBodyTRSO);
    }

    public FrameBodyTRSO(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTRSO(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
