package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.AbstractString;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.StringHashMap;
import com.transsion.audiotagger.tag.datatype.TextEncodedStringNullTerminated;
import com.transsion.audiotagger.tag.datatype.TextEncodedStringSizeTerminated;
import com.transsion.audiotagger.tag.id3.ID3TextEncodingConversion;
import com.transsion.audiotagger.tag.reference.Languages;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.List;

public class FrameBodyCOMM extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public static final String DEFAULT = "";
    public static final String ITUNES_NORMALIZATION = "iTunNORM";
    public static final String MM_CUSTOM1 = "Songs-DB_Custom1";
    public static final String MM_CUSTOM2 = "Songs-DB_Custom2";
    public static final String MM_CUSTOM3 = "Songs-DB_Custom3";
    public static final String MM_CUSTOM4 = "Songs-DB_Custom4";
    public static final String MM_CUSTOM5 = "Songs-DB_Custom5";
    public static final String MM_OCCASION = "Songs-DB_Occasion";
    private static final String MM_PREFIX = "Songs-DB";
    public static final String MM_QUALITY = "Songs-DB_Preference";
    public static final String MM_TEMPO = "Songs-DB_Tempo";

    public FrameBodyCOMM() {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_LANGUAGE, Languages.DEFAULT_ID);
        setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
        setObjectValue(DataTypes.OBJ_TEXT, "");
    }

    public void addTextValue(String str) {
        ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).addValue(str);
    }

    public String getDescription() {
        return (String) getObjectValue(DataTypes.OBJ_DESCRIPTION);
    }

    public String getFirstTextValue() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).getValueAtIndex(0);
    }

    @Override
    public String getIdentifier() {
        return "COMM";
    }

    public String getLanguage() {
        return (String) getObjectValue(DataTypes.OBJ_LANGUAGE);
    }

    public int getNumberOfValues() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).getNumberOfValues();
    }

    public String getText() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).getValueAtIndex(0);
    }

    public String getTextWithoutTrailingNulls() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).getValueWithoutTrailingNull();
    }

    @Override
    public String getUserFriendlyValue() {
        return getText();
    }

    public String getValueAtIndex(int i) {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).getValueAtIndex(i);
    }

    public List<String> getValues() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).getValues();
    }

    public boolean isItunesFrame() {
        String description = getDescription();
        return (description == null || description.length() == 0 || !description.equals(ITUNES_NORMALIZATION)) ? false : true;
    }

    public boolean isMediaMonkeyFrame() {
        String description = getDescription();
        return (description == null || description.length() == 0 || !description.startsWith(MM_PREFIX)) ? false : true;
    }

    public void setDescription(String str) {
        if (str == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str);
    }

    public void setLanguage(String str) {
        setObjectValue(DataTypes.OBJ_LANGUAGE, str);
    }

    public void setText(String str) {
        if (str == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        setObjectValue(DataTypes.OBJ_TEXT, str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TEXT_ENCODING, this, 1));
        this.objectList.add(new StringHashMap(DataTypes.OBJ_LANGUAGE, this, 3));
        this.objectList.add(new TextEncodedStringNullTerminated(DataTypes.OBJ_DESCRIPTION, this));
        this.objectList.add(new TextEncodedStringSizeTerminated(DataTypes.OBJ_TEXT, this));
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        setTextEncoding(ID3TextEncodingConversion.getTextEncoding(getHeader(), getTextEncoding()));
        if (!((AbstractString) getObject(DataTypes.OBJ_TEXT)).canBeEncoded()) {
            setTextEncoding(ID3TextEncodingConversion.getUnicodeTextEncoding(getHeader()));
        }
        if (!((AbstractString) getObject(DataTypes.OBJ_DESCRIPTION)).canBeEncoded()) {
            setTextEncoding(ID3TextEncodingConversion.getUnicodeTextEncoding(getHeader()));
        }
        super.write(byteArrayOutputStream);
    }

    public FrameBodyCOMM(FrameBodyCOMM frameBodyCOMM) {
        super(frameBodyCOMM);
    }

    public FrameBodyCOMM(byte b, String str, String str2, String str3) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_LANGUAGE, str);
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str2);
        setObjectValue(DataTypes.OBJ_TEXT, str3);
    }

    public FrameBodyCOMM(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
