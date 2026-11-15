package com.yandex.mobile.ads.impl;

public enum cv {
    EF0("definedByJavaScript"),
    EF1("htmlDisplay"),
    EF2("nativeDisplay"),
    c("video"),
    EF49("audio");

    private final String b;

    cv(String str) {
        this.b = str;
    }

    @Override
    public final String toString() {
        return this.b;
    }
}
