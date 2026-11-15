package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.nio.ByteBuffer;

public class FrameBodyTDAT extends AbstractFrameBodyTextInfo implements ID3v23FrameBody {
    public static final int DATA_SIZE = 4;
    public static final int DAY_END = 2;
    public static final int DAY_START = 0;
    public static final int MONTH_END = 4;
    public static final int MONTH_START = 2;
    private boolean monthOnly;

    public FrameBodyTDAT() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_TDAT;
    }

    public boolean isMonthOnly() {
        return this.monthOnly;
    }

    public void setMonthOnly(boolean z) {
        this.monthOnly = z;
    }

    public FrameBodyTDAT(FrameBodyTDAT frameBodyTDAT) {
        super(frameBodyTDAT);
    }

    public FrameBodyTDAT(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTDAT(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
