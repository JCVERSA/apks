package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.nio.ByteBuffer;

public class FrameBodyTYER extends AbstractFrameBodyTextInfo implements ID3v23FrameBody {
    public FrameBodyTYER() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_TYER;
    }

    public FrameBodyTYER(FrameBodyTYER frameBodyTYER) {
        super(frameBodyTYER);
    }

    public FrameBodyTYER(FrameBodyTDRC frameBodyTDRC) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_TEXT, frameBodyTDRC.getText());
    }

    public FrameBodyTYER(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTYER(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
