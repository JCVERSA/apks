package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.StringSizeTerminated;
import java.nio.ByteBuffer;

public class FieldFrameBodyEAL extends AbstractLyrics3v2FieldFrameBody {
    public FieldFrameBodyEAL() {
    }

    public String getAlbum() {
        return (String) getObjectValue("Album");
    }

    @Override
    public String getIdentifier() {
        return Lyrics3v2Fields.FIELD_V2_ALBUM;
    }

    public void setAlbum(String str) {
        setObjectValue("Album", str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringSizeTerminated("Album", this));
    }

    public FieldFrameBodyEAL(FieldFrameBodyEAL fieldFrameBodyEAL) {
        super(fieldFrameBodyEAL);
    }

    public FieldFrameBodyEAL(String str) {
        setObjectValue("Album", str);
    }

    public FieldFrameBodyEAL(ByteBuffer byteBuffer) throws InvalidTagException {
        read(byteBuffer);
    }
}
