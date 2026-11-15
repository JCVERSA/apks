package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyMVNM extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyMVNM() {
    }

    @Override
    public String getIdentifier() {
        return "MVNM";
    }

    public FrameBodyMVNM(FrameBodyMVNM frameBodyMVNM) {
        super(frameBodyMVNM);
    }

    public FrameBodyMVNM(byte b, String str) {
        super(b, str);
    }

    public FrameBodyMVNM(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
