package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.reference.MusicalKey;
import java.nio.ByteBuffer;

public class FrameBodyTKEY extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTKEY() {
    }

    @Override
    public String getIdentifier() {
        return "TKEY";
    }

    public boolean isValid() {
        return MusicalKey.isValid(getFirstTextValue());
    }

    public FrameBodyTKEY(FrameBodyTKEY frameBodyTKEY) {
        super(frameBodyTKEY);
    }

    public FrameBodyTKEY(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTKEY(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
