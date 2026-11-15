package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.nio.ByteBuffer;

public class FrameBodyTDRL extends AbstractFrameBodyTextInfo implements ID3v24FrameBody {
    public FrameBodyTDRL() {
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_RELEASE_TIME;
    }

    public FrameBodyTDRL(FrameBodyTDRL frameBodyTDRL) {
        super(frameBodyTDRL);
    }

    public FrameBodyTDRL(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTDRL(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
