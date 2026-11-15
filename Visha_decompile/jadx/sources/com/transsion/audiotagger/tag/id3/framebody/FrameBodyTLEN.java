package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTLEN extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTLEN() {
    }

    @Override
    public String getIdentifier() {
        return "TLEN";
    }

    public FrameBodyTLEN(FrameBodyTLEN frameBodyTLEN) {
        super(frameBodyTLEN);
    }

    public FrameBodyTLEN(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTLEN(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
