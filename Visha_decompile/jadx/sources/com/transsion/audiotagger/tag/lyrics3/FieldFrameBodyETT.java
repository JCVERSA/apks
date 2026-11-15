package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.StringSizeTerminated;
import java.nio.ByteBuffer;

public class FieldFrameBodyETT extends AbstractLyrics3v2FieldFrameBody {
    public FieldFrameBodyETT() {
    }

    @Override
    public String getIdentifier() {
        return Lyrics3v2Fields.FIELD_V2_TRACK;
    }

    public String getTitle() {
        return (String) getObjectValue("Title");
    }

    public void setTitle(String str) {
        setObjectValue("Title", str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringSizeTerminated("Title", this));
    }

    public FieldFrameBodyETT(FieldFrameBodyETT fieldFrameBodyETT) {
        super(fieldFrameBodyETT);
    }

    public FieldFrameBodyETT(String str) {
        setObjectValue("Title", str);
    }

    public FieldFrameBodyETT(ByteBuffer byteBuffer) throws InvalidTagException {
        read(byteBuffer);
    }
}
