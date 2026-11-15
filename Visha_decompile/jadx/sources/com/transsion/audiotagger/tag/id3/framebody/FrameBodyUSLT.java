package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.AbstractString;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.Lyrics3Line;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.StringHashMap;
import com.transsion.audiotagger.tag.datatype.TextEncodedStringNullTerminated;
import com.transsion.audiotagger.tag.datatype.TextEncodedStringSizeTerminated;
import com.transsion.audiotagger.tag.id3.ID3TextEncodingConversion;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;

public class FrameBodyUSLT extends AbstractID3v2FrameBody implements ID3v23FrameBody, ID3v24FrameBody {
    public FrameBodyUSLT() {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_LANGUAGE, "");
        setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
        setObjectValue(DataTypes.OBJ_LYRICS, "");
    }

    public void addLyric(String str) {
        setLyric(getLyric() + str);
    }

    public String getDescription() {
        return (String) getObjectValue(DataTypes.OBJ_DESCRIPTION);
    }

    public String getFirstTextValue() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_LYRICS)).getValueAtIndex(0);
    }

    @Override
    public String getIdentifier() {
        return "USLT";
    }

    public String getLanguage() {
        return (String) getObjectValue(DataTypes.OBJ_LANGUAGE);
    }

    public String getLyric() {
        return (String) getObjectValue(DataTypes.OBJ_LYRICS);
    }

    @Override
    public String getUserFriendlyValue() {
        return getFirstTextValue();
    }

    public void setDescription(String str) {
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str);
    }

    public void setLanguage(String str) {
        setObjectValue(DataTypes.OBJ_LANGUAGE, str);
    }

    public void setLyric(String str) {
        setObjectValue(DataTypes.OBJ_LYRICS, str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TEXT_ENCODING, this, 1));
        this.objectList.add(new StringHashMap(DataTypes.OBJ_LANGUAGE, this, 3));
        this.objectList.add(new TextEncodedStringNullTerminated(DataTypes.OBJ_DESCRIPTION, this));
        this.objectList.add(new TextEncodedStringSizeTerminated(DataTypes.OBJ_LYRICS, this));
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        setTextEncoding(ID3TextEncodingConversion.getTextEncoding(getHeader(), getTextEncoding()));
        if (!((AbstractString) getObject(DataTypes.OBJ_DESCRIPTION)).canBeEncoded()) {
            setTextEncoding(ID3TextEncodingConversion.getUnicodeTextEncoding(getHeader()));
        }
        if (!((AbstractString) getObject(DataTypes.OBJ_LYRICS)).canBeEncoded()) {
            setTextEncoding(ID3TextEncodingConversion.getUnicodeTextEncoding(getHeader()));
        }
        super.write(byteArrayOutputStream);
    }

    public void addLyric(Lyrics3Line lyrics3Line) {
        setLyric(getLyric() + lyrics3Line.writeString());
    }

    public FrameBodyUSLT(FrameBodyUSLT frameBodyUSLT) {
        super(frameBodyUSLT);
    }

    public FrameBodyUSLT(byte b, String str, String str2, String str3) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_LANGUAGE, str);
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str2);
        setObjectValue(DataTypes.OBJ_LYRICS, str3);
    }

    public FrameBodyUSLT(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
