package com.transsion.audiotagger.audio.aiff;

public enum AiffType {
    AIFF("AIFF"),
    AIFC("AIFC");

    String code;

    AiffType(String str) {
        this.code = str;
    }

    public String getCode() {
        return this.code;
    }
}
