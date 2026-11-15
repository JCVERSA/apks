package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.PartOfSet;
import java.nio.ByteBuffer;

public abstract class AbstractFrameBodyNumberTotal extends AbstractID3v2FrameBody {
    public AbstractFrameBodyNumberTotal() {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_TEXT, new PartOfSet.PartOfSetValue());
    }

    @Override
    public abstract String getIdentifier();

    public Integer getNumber() {
        return ((PartOfSet.PartOfSetValue) getObjectValue(DataTypes.OBJ_TEXT)).getCount();
    }

    public String getNumberAsText() {
        return ((PartOfSet.PartOfSetValue) getObjectValue(DataTypes.OBJ_TEXT)).getCountAsText();
    }

    public String getText() {
        return getObjectValue(DataTypes.OBJ_TEXT).toString();
    }

    public Integer getTotal() {
        return ((PartOfSet.PartOfSetValue) getObjectValue(DataTypes.OBJ_TEXT)).getTotal();
    }

    public String getTotalAsText() {
        return ((PartOfSet.PartOfSetValue) getObjectValue(DataTypes.OBJ_TEXT)).getTotalAsText();
    }

    @Override
    public String getUserFriendlyValue() {
        return String.valueOf(((PartOfSet.PartOfSetValue) getObjectValue(DataTypes.OBJ_TEXT)).getCount());
    }

    public void setNumber(Integer num) {
        ((PartOfSet.PartOfSetValue) getObjectValue(DataTypes.OBJ_TEXT)).setCount(num);
    }

    public void setText(String str) {
        setObjectValue(DataTypes.OBJ_TEXT, new PartOfSet.PartOfSetValue(str));
    }

    public void setTotal(Integer num) {
        ((PartOfSet.PartOfSetValue) getObjectValue(DataTypes.OBJ_TEXT)).setTotal(num);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TEXT_ENCODING, this, 1));
        this.objectList.add(new PartOfSet(DataTypes.OBJ_TEXT, this));
    }

    public void setNumber(String str) {
        ((PartOfSet.PartOfSetValue) getObjectValue(DataTypes.OBJ_TEXT)).setCount(str);
    }

    public void setTotal(String str) {
        ((PartOfSet.PartOfSetValue) getObjectValue(DataTypes.OBJ_TEXT)).setTotal(str);
    }

    public AbstractFrameBodyNumberTotal(AbstractFrameBodyNumberTotal abstractFrameBodyNumberTotal) {
        super(abstractFrameBodyNumberTotal);
    }

    public AbstractFrameBodyNumberTotal(byte b, String str) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_TEXT, new PartOfSet.PartOfSetValue(str));
    }

    public AbstractFrameBodyNumberTotal(byte b, Integer num, Integer num2) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_TEXT, new PartOfSet.PartOfSetValue(num, num2));
    }

    public AbstractFrameBodyNumberTotal(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
