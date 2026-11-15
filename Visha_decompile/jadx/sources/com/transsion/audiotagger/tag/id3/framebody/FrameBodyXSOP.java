package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.nio.ByteBuffer;

public class FrameBodyXSOP extends AbstractFrameBodyTextInfo implements ID3v23FrameBody {
    public FrameBodyXSOP() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_ARTIST_SORT_ORDER_MUSICBRAINZ;
    }

    public FrameBodyXSOP(FrameBodyXSOP frameBodyXSOP) {
        super(frameBodyXSOP);
    }

    public FrameBodyXSOP(byte b, String str) {
        super(b, str);
    }

    public FrameBodyXSOP(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
