package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.nio.ByteBuffer;

public class FrameBodyTIME extends AbstractFrameBodyTextInfo implements ID3v23FrameBody {
    private boolean hoursOnly;

    public FrameBodyTIME() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_TIME;
    }

    public boolean isHoursOnly() {
        return this.hoursOnly;
    }

    public void setHoursOnly(boolean z) {
        this.hoursOnly = z;
    }

    public FrameBodyTIME(FrameBodyTIME frameBodyTIME) {
        super(frameBodyTIME);
    }

    public FrameBodyTIME(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTIME(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
