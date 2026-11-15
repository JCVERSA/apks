package com.iab.omid.library.hisavana.adsession;

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
