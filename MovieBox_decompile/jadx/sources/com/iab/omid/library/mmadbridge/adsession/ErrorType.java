package com.iab.omid.library.mmadbridge.adsession;

public enum ErrorType {
    GENERIC("generic"),
    VIDEO("video");

    private final String errorType;

    ErrorType(String str) {
        this.errorType = str;
    }

    @Override
    public String toString() {
        return this.errorType;
    }
}
