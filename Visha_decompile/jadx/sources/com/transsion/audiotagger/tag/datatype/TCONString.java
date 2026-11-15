package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class TCONString extends TextEncodedStringSizeTerminated {
    private boolean isNullSeperateMultipleValues;

    public TCONString(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
        this.isNullSeperateMultipleValues = true;
    }

    public static List<String> splitV23(String str) {
        List<String> listAsList = Arrays.asList(str.replaceAll("(\\(\\d+\\)|\\(RX\\)|\\(CR\\)\\w*)", "$1\u0000").split("\u0000"));
        if (listAsList.size() != 0) {
            return listAsList;
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add("");
        return arrayList;
    }

    @Override
    public void addValue(String str) {
        if (isNullSeperateMultipleValues()) {
            setValue(this.value + "\u0000" + str);
            return;
        }
        if (str.startsWith("(")) {
            setValue(this.value + str);
            return;
        }
        setValue(this.value + "\u0000" + str);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TCONString) && super.equals(obj);
    }

    @Override
    public int getNumberOfValues() {
        return getValues().size();
    }

    @Override
    public String getValueAtIndex(int i) {
        return getValues().get(i);
    }

    @Override
    public String getValueWithoutTrailingNull() {
        List<String> values = getValues();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < values.size(); i++) {
            if (i != 0) {
                stringBuffer.append("\u0000");
            }
            stringBuffer.append(values.get(i));
        }
        return stringBuffer.toString();
    }

    @Override
    public List<String> getValues() {
        return isNullSeperateMultipleValues() ? TextEncodedStringSizeTerminated.splitByNullSeperator((String) this.value) : splitV23((String) this.value);
    }

    public boolean isNullSeperateMultipleValues() {
        return this.isNullSeperateMultipleValues;
    }

    public void setNullSeperateMultipleValues(boolean z) {
        this.isNullSeperateMultipleValues = z;
    }

    public TCONString(TCONString tCONString) {
        super(tCONString);
        this.isNullSeperateMultipleValues = true;
    }
}
