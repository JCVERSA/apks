package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.BooleanString;
import java.nio.ByteBuffer;

public class FieldFrameBodyIND extends AbstractLyrics3v2FieldFrameBody {
    public FieldFrameBodyIND() {
    }

    public String getAuthor() {
        return (String) getObjectValue("Author");
    }

    @Override
    public String getIdentifier() {
        return Lyrics3v2Fields.FIELD_V2_INDICATIONS;
    }

    public void setAuthor(String str) {
        setObjectValue("Author", str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new BooleanString("Lyrics Present", this));
        this.objectList.add(new BooleanString("Timestamp Present", this));
    }

    public FieldFrameBodyIND(FieldFrameBodyIND fieldFrameBodyIND) {
        super(fieldFrameBodyIND);
    }

    public FieldFrameBodyIND(boolean z, boolean z2) {
        setObjectValue("Lyrics Present", Boolean.valueOf(z));
        setObjectValue("Timestamp Present", Boolean.valueOf(z2));
    }

    public FieldFrameBodyIND(ByteBuffer byteBuffer) throws InvalidTagException {
        read(byteBuffer);
    }
}
