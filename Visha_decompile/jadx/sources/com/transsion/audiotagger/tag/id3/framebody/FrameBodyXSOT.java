package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.nio.ByteBuffer;

public class FrameBodyXSOT extends AbstractFrameBodyTextInfo implements ID3v23FrameBody {
    public FrameBodyXSOT() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_TITLE_SORT_ORDER_MUSICBRAINZ;
    }

    public FrameBodyXSOT(FrameBodyXSOT frameBodyXSOT) {
        super(frameBodyXSOT);
    }

    public FrameBodyXSOT(byte b, String str) {
        super(b, str);
    }

    public FrameBodyXSOT(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
