package com.transsion.audiotagger.audio.mp4;

public enum EncoderType {
    AAC("AAC"),
    DRM_AAC("DRM AAC"),
    APPLE_LOSSLESS("Apple Lossless");

    private String description;

    EncoderType(String str) {
        this.description = str;
    }

    public String getDescription() {
        return this.description;
    }
}
