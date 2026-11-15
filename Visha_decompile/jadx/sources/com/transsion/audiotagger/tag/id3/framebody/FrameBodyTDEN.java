package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.nio.ByteBuffer;

public class FrameBodyTDEN extends AbstractFrameBodyTextInfo implements ID3v24FrameBody {
    public FrameBodyTDEN() {
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_ENCODING_TIME;
    }

    public FrameBodyTDEN(FrameBodyTDEN frameBodyTDEN) {
        super(frameBodyTDEN);
    }

    public FrameBodyTDEN(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTDEN(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
