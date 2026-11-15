package com.amazonaws;

public enum Protocol {
    HTTP("http"),
    HTTPS("https");

    private final String protocol;

    Protocol(String str) {
        this.protocol = str;
    }

    @Override
    public String toString() {
        return this.protocol;
    }
}
