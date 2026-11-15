package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.nio.ByteBuffer;

public class FrameBodyTORY extends AbstractFrameBodyTextInfo implements ID3v23FrameBody {
    private static final int NUMBER_OF_DIGITS_IN_YEAR = 4;

    public FrameBodyTORY() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_TORY;
    }

    public FrameBodyTORY(FrameBodyTORY frameBodyTORY) {
        super(frameBodyTORY);
    }

    public FrameBodyTORY(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTORY(FrameBodyTDOR frameBodyTDOR) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_TEXT, frameBodyTDOR.getText().length() > 4 ? frameBodyTDOR.getText().substring(0, 4) : frameBodyTDOR.getText());
    }

    public FrameBodyTORY(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
