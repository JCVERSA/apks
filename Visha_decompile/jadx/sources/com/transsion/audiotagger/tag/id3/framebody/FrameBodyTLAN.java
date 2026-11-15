package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.reference.Languages;
import java.nio.ByteBuffer;

public class FrameBodyTLAN extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTLAN() {
    }

    @Override
    public String getIdentifier() {
        return "TLAN";
    }

    public boolean isValid() {
        return Languages.getInstanceOf().getValueForId(getFirstTextValue()) != null;
    }

    public FrameBodyTLAN(FrameBodyTLAN frameBodyTLAN) {
        super(frameBodyTLAN);
    }

    public FrameBodyTLAN(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTLAN(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
