package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.nio.ByteBuffer;

public class FrameBodyTPOS extends AbstractFrameBodyNumberTotal implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTPOS() {
    }

    public Integer getDiscNo() {
        return getNumber();
    }

    public String getDiscNoAsText() {
        return getNumberAsText();
    }

    public Integer getDiscTotal() {
        return getTotal();
    }

    public String getDiscTotalAsText() {
        return getTotalAsText();
    }

    @Override
    public String getIdentifier() {
        return "TPOS";
    }

    public void setDiscNo(Integer num) {
        setNumber(num);
    }

    public void setDiscTotal(Integer num) {
        setTotal(num);
    }

    public FrameBodyTPOS(FrameBodyTPOS frameBodyTPOS) {
        super(frameBodyTPOS);
    }

    public void setDiscNo(String str) {
        setNumber(str);
    }

    public void setDiscTotal(String str) {
        setTotal(str);
    }

    public FrameBodyTPOS(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTPOS(byte b, Integer num, Integer num2) {
        super(b, num, num2);
    }

    public FrameBodyTPOS(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
