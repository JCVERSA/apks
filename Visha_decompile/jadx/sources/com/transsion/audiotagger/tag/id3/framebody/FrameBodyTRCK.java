package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.PartOfSet;
import java.nio.ByteBuffer;

public class FrameBodyTRCK extends AbstractFrameBodyNumberTotal implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyTRCK() {
    }

    @Override
    public String getIdentifier() {
        return "TRCK";
    }

    public Integer getTrackNo() {
        return getNumber();
    }

    public String getTrackNoAsText() {
        return getNumberAsText();
    }

    public Integer getTrackTotal() {
        return getTotal();
    }

    public String getTrackTotalAsText() {
        return getTotalAsText();
    }

    @Override
    public void setText(String str) {
        setObjectValue(DataTypes.OBJ_TEXT, new PartOfSet.PartOfSetValue(str));
    }

    public void setTrackNo(Integer num) {
        setNumber(num);
    }

    public void setTrackTotal(Integer num) {
        setTotal(num);
    }

    public FrameBodyTRCK(FrameBodyTRCK frameBodyTRCK) {
        super(frameBodyTRCK);
    }

    public void setTrackNo(String str) {
        setNumber(str);
    }

    public void setTrackTotal(String str) {
        setTotal(str);
    }

    public FrameBodyTRCK(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTRCK(byte b, Integer num, Integer num2) {
        super(b, num, num2);
    }

    public FrameBodyTRCK(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
