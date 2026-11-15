package com.iab.omid.library.bytedance2.adsession;

public enum AdSessionContextType {
    HTML("html"),
    NATIVE("native"),
    JAVASCRIPT("javascript");

    private final String typeString;

    AdSessionContextType(String str) {
        this.typeString = str;
    }

    @Override
    public String toString() {
        return this.typeString;
    }
}
