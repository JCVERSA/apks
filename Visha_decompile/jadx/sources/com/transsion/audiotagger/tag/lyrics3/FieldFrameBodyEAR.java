package com.transsion.audiotagger.tag.lyrics3;

import androidx.exifinterface.media.ExifInterface;
import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.StringSizeTerminated;
import java.nio.ByteBuffer;

public class FieldFrameBodyEAR extends AbstractLyrics3v2FieldFrameBody {
    public FieldFrameBodyEAR() {
    }

    public String getArtist() {
        return (String) getObjectValue(ExifInterface.TAG_ARTIST);
    }

    @Override
    public String getIdentifier() {
        return Lyrics3v2Fields.FIELD_V2_ARTIST;
    }

    public void setArtist(String str) {
        setObjectValue(ExifInterface.TAG_ARTIST, str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringSizeTerminated(ExifInterface.TAG_ARTIST, this));
    }

    public FieldFrameBodyEAR(FieldFrameBodyEAR fieldFrameBodyEAR) {
        super(fieldFrameBodyEAR);
    }

    public FieldFrameBodyEAR(String str) {
        setObjectValue(ExifInterface.TAG_ARTIST, str);
    }

    public FieldFrameBodyEAR(ByteBuffer byteBuffer) throws InvalidTagException {
        read(byteBuffer);
    }
}
