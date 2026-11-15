package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.TextEncodedStringSizeTerminated;
import com.transsion.audiotagger.tag.id3.ID3TextEncodingConversion;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.List;

public abstract class AbstractFrameBodyTextInfo extends AbstractID3v2FrameBody {
    public AbstractFrameBodyTextInfo() {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_TEXT, "");
    }

    public void addTextValue(String str) {
        ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).addValue(str);
    }

    public String getFirstTextValue() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).getValueAtIndex(0);
    }

    public int getNumberOfValues() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).getNumberOfValues();
    }

    public String getText() {
        return (String) getObjectValue(DataTypes.OBJ_TEXT);
    }

    public String getTextWithoutTrailingNulls() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).getValueWithoutTrailingNull();
    }

    @Override
    public String getUserFriendlyValue() {
        return getTextWithoutTrailingNulls();
    }

    public String getValueAtIndex(int i) {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).getValueAtIndex(i);
    }

    public List<String> getValues() {
        return ((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).getValues();
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
        this.objectList.add(new TextEncodedStringSizeTerminated(DataTypes.OBJ_TEXT, this));
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        setTextEncoding(ID3TextEncodingConversion.getTextEncoding(getHeader(), getTextEncoding()));
        if (!((TextEncodedStringSizeTerminated) getObject(DataTypes.OBJ_TEXT)).canBeEncoded()) {
            setTextEncoding(ID3TextEncodingConversion.getUnicodeTextEncoding(getHeader()));
        }
        super.write(byteArrayOutputStream);
    }

    public AbstractFrameBodyTextInfo(AbstractFrameBodyTextInfo abstractFrameBodyTextInfo) {
        super(abstractFrameBodyTextInfo);
    }

    public AbstractFrameBodyTextInfo(byte b, String str) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_TEXT, str);
    }

    public AbstractFrameBodyTextInfo(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
