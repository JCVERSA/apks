package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.Pair;
import com.transsion.audiotagger.tag.datatype.PairedTextEncodedStringNullTerminated;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

public class FrameBodyTMCL extends AbstractFrameBodyPairs implements ID3v24FrameBody {
    public FrameBodyTMCL() {
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_MUSICIAN_CREDITS;
    }

    public FrameBodyTMCL(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTMCL(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }

    public FrameBodyTMCL(FrameBodyIPLS frameBodyIPLS) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(frameBodyIPLS.getTextEncoding()));
        setObjectValue(DataTypes.OBJ_TEXT, frameBodyIPLS.getPairing());
    }

    public FrameBodyTMCL(byte b, List<Pair> list) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        PairedTextEncodedStringNullTerminated.ValuePairs valuePairs = new PairedTextEncodedStringNullTerminated.ValuePairs();
        Iterator<Pair> it = list.iterator();
        while (it.hasNext()) {
            valuePairs.add(it.next());
        }
        setObjectValue(DataTypes.OBJ_TEXT, valuePairs);
    }
}
