package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.AbstractString;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.StringSizeTerminated;
import com.transsion.audiotagger.tag.datatype.TextEncodedStringNullTerminated;
import com.transsion.audiotagger.tag.datatype.TextEncodedStringSizeTerminated;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.List;

public class FrameBodyWXXX extends AbstractFrameBodyUrlLink implements ID3v24FrameBody, ID3v23FrameBody {
    public static final String URL_DISCOGS_ARTIST_SITE = "DISCOGS_ARTIST";
    public static final String URL_DISCOGS_RELEASE_SITE = "DISCOGS_RELEASE";
    public static final String URL_LYRICS_SITE = "LYRICS_SITE";
    public static final String URL_OFFICIAL_RELEASE_SITE = "OFFICIAL_RELEASE";
    public static final String URL_WIKIPEDIA_ARTIST_SITE = "WIKIPEDIA_ARTIST";
    public static final String URL_WIKIPEDIA_RELEASE_SITE = "WIKIPEDIA_RELEASE";

    public FrameBodyWXXX() {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
        setObjectValue(DataTypes.OBJ_URLLINK, "");
    }

    public void addUrlLink(String str) {
        ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_URLLINK)).addValue(str);
    }

    public String getDescription() {
        return (String) getObjectValue(DataTypes.OBJ_DESCRIPTION);
    }

    public String getFirstUrlLink() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_URLLINK)).getValueAtIndex(0);
    }

    @Override
    public String getIdentifier() {
        return "WXXX";
    }

    public String getUrlLinkAtIndex(int i) {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_URLLINK)).getValueAtIndex(i);
    }

    public String getUrlLinkWithoutTrailingNulls() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_URLLINK)).getValueWithoutTrailingNull();
    }

    public List<String> getUrlLinks() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_URLLINK)).getValues();
    }

    public void setDescription(String str) {
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TEXT_ENCODING, this, 1));
        this.objectList.add(new TextEncodedStringNullTerminated(DataTypes.OBJ_DESCRIPTION, this));
        this.objectList.add(new StringSizeTerminated(DataTypes.OBJ_URLLINK, this));
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        if (!((AbstractString) getObject(DataTypes.OBJ_DESCRIPTION)).canBeEncoded()) {
            setTextEncoding((byte) 1);
        }
        super.write(byteArrayOutputStream);
    }

    public FrameBodyWXXX(FrameBodyWXXX frameBodyWXXX) {
        super(frameBodyWXXX);
    }

    public FrameBodyWXXX(byte b, String str, String str2) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str);
        setObjectValue(DataTypes.OBJ_URLLINK, str2);
    }

    public FrameBodyWXXX(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
