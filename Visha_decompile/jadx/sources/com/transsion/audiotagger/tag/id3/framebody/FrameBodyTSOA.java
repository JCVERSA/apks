package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTSOA extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTSOA() {
    }

    @Override
    public String getIdentifier() {
        return "TSOA";
    }

    public FrameBodyTSOA(FrameBodyTSOA frameBodyTSOA) {
        super(frameBodyTSOA);
    }

    public FrameBodyTSOA(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTSOA(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
