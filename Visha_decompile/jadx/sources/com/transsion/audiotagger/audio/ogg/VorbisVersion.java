package com.transsion.audiotagger.audio.ogg;

public enum VorbisVersion {
    VERSION_ONE("Ogg Vorbis v1");

    private String displayName;

    VorbisVersion(String str) {
        this.displayName = str;
    }

    @Override
    public String toString() {
        return this.displayName;
    }
}
