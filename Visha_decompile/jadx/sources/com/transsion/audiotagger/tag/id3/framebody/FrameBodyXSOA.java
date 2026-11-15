package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.nio.ByteBuffer;

public class FrameBodyXSOA extends AbstractFrameBodyTextInfo implements ID3v23FrameBody {
    public FrameBodyXSOA() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_ALBUM_SORT_ORDER_MUSICBRAINZ;
    }

    public FrameBodyXSOA(FrameBodyXSOA frameBodyXSOA) {
        super(frameBodyXSOA);
    }

    public FrameBodyXSOA(byte b, String str) {
        super(b, str);
    }

    public FrameBodyXSOA(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
