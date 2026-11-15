package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTOLY extends AbstractFrameBodyTextInfo implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTOLY() {
    }

    @Override
    public String getIdentifier() {
        return "TOLY";
    }

    public FrameBodyTOLY(FrameBodyTOLY frameBodyTOLY) {
        super(frameBodyTOLY);
    }

    public FrameBodyTOLY(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTOLY(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
