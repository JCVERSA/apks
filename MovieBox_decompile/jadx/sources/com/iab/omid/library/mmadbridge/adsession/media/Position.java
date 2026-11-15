package com.iab.omid.library.mmadbridge.adsession.media;

public enum Position {
    PREROLL("preroll"),
    MIDROLL("midroll"),
    POSTROLL("postroll"),
    STANDALONE("standalone");

    private final String position;

    Position(String str) {
        this.position = str;
    }

    @Override
    public String toString() {
        return this.position;
    }
}
