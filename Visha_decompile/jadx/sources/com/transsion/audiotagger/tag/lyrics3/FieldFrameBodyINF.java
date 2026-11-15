package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.StringSizeTerminated;
import java.nio.ByteBuffer;

public class FieldFrameBodyINF extends AbstractLyrics3v2FieldFrameBody {
    public FieldFrameBodyINF() {
    }

    public String getAdditionalInformation() {
        return (String) getObjectValue("Additional Information");
    }

    @Override
    public String getIdentifier() {
        return Lyrics3v2Fields.FIELD_V2_ADDITIONAL_MULTI_LINE_TEXT;
    }

    public void setAdditionalInformation(String str) {
        setObjectValue("Additional Information", str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringSizeTerminated("Additional Information", this));
    }

    public FieldFrameBodyINF(FieldFrameBodyINF fieldFrameBodyINF) {
        super(fieldFrameBodyINF);
    }

    public FieldFrameBodyINF(String str) {
        setObjectValue("Additional Information", str);
    }

    public FieldFrameBodyINF(ByteBuffer byteBuffer) throws InvalidTagException {
        read(byteBuffer);
    }
}
