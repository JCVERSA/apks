package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.Pair;
import com.transsion.audiotagger.tag.datatype.PairedTextEncodedStringNullTerminated;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

public class FrameBodyIPLS extends AbstractFrameBodyPairs implements ID3v23FrameBody {
    public FrameBodyIPLS() {
    }

    @Override
    public String getIdentifier() {
        return ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE;
    }

    public FrameBodyIPLS(byte b, String str) {
        super(b, str);
    }

    public FrameBodyIPLS(FrameBodyIPLS frameBodyIPLS) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(frameBodyIPLS.getTextEncoding()));
        setObjectValue(DataTypes.OBJ_TEXT, frameBodyIPLS.getPairing());
    }

    public FrameBodyIPLS(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }

    public FrameBodyIPLS(FrameBodyTIPL frameBodyTIPL) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(frameBodyTIPL.getTextEncoding()));
        setObjectValue(DataTypes.OBJ_TEXT, frameBodyTIPL.getPairing());
    }

    public FrameBodyIPLS(byte b, List<Pair> list) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        PairedTextEncodedStringNullTerminated.ValuePairs valuePairs = new PairedTextEncodedStringNullTerminated.ValuePairs();
        Iterator<Pair> it = list.iterator();
        while (it.hasNext()) {
            valuePairs.add(it.next());
        }
        setObjectValue(DataTypes.OBJ_TEXT, valuePairs);
    }
}
