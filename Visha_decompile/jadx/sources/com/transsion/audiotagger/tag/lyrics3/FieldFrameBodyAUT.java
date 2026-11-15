package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.StringSizeTerminated;
import java.nio.ByteBuffer;

public class FieldFrameBodyAUT extends AbstractLyrics3v2FieldFrameBody {
    public FieldFrameBodyAUT() {
    }

    public String getAuthor() {
        return (String) getObjectValue("Author");
    }

    @Override
    public String getIdentifier() {
        return Lyrics3v2Fields.FIELD_V2_AUTHOR;
    }

    public void setAuthor(String str) {
        setObjectValue("Author", str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringSizeTerminated("Author", this));
    }

    public FieldFrameBodyAUT(FieldFrameBodyAUT fieldFrameBodyAUT) {
        super(fieldFrameBodyAUT);
    }

    public FieldFrameBodyAUT(String str) {
        setObjectValue("Author", str);
    }

    public FieldFrameBodyAUT(ByteBuffer byteBuffer) throws InvalidTagException {
        read(byteBuffer);
    }
}
