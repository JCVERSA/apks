package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.nio.ByteBuffer;

public class FrameBodyTSIZ extends AbstractFrameBodyTextInfo implements ID3v23FrameBody {
    public FrameBodyTSIZ() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_TSIZ;
    }

    public FrameBodyTSIZ(FrameBodyTSIZ frameBodyTSIZ) {
        super(frameBodyTSIZ);
    }

    public FrameBodyTSIZ(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTSIZ(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
