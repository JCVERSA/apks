package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyMVIN extends AbstractFrameBodyNumberTotal implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyMVIN() {
    }

    @Override
    public String getIdentifier() {
        return "MVIN";
    }

    public FrameBodyMVIN(FrameBodyMVIN frameBodyMVIN) {
        super(frameBodyMVIN);
    }

    public FrameBodyMVIN(byte b, String str) {
        super(b, str);
    }

    public FrameBodyMVIN(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }

    public FrameBodyMVIN(byte b, Integer num, Integer num2) {
        super(b, num, num2);
    }
}
