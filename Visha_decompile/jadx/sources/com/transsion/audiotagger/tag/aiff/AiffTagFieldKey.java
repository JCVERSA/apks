package com.transsion.audiotagger.tag.aiff;

public enum AiffTagFieldKey {
    TIMESTAMP("TIMESTAMP");

    private String fieldName;

    AiffTagFieldKey(String str) {
        this.fieldName = str;
    }

    public String getFieldName() {
        return this.fieldName;
    }
}
