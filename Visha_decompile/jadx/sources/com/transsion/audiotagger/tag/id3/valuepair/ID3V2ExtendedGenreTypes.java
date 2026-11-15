package com.transsion.audiotagger.tag.id3.valuepair;

public enum ID3V2ExtendedGenreTypes {
    RX("Remix"),
    CR("Cover");

    private String description;

    ID3V2ExtendedGenreTypes(String str) {
        this.description = str;
    }

    public String getDescription() {
        return this.description;
    }
}
