package com.transsion.audiotagger.tag.datatype;

public class Pair {
    private String key;
    private String value;

    public Pair(String str, String str2) {
        setKey(str);
        setValue(str2);
    }

    public String getKey() {
        return this.key;
    }

    public String getPairValue() {
        return getKey() + (char) 0 + getValue();
    }

    public String getValue() {
        return this.value;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setValue(String str) {
        this.value = str;
    }
}
