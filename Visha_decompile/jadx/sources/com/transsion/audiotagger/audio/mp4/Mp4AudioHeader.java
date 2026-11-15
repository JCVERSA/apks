package com.transsion.audiotagger.audio.mp4;

import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.audio.mp4.atom.Mp4EsdsBox;

public class Mp4AudioHeader extends GenericAudioHeader {
    private String brand;
    private Mp4EsdsBox.Kind kind;
    private Mp4EsdsBox.AudioProfile profile;

    public String getBrand() {
        return this.brand;
    }

    public Mp4EsdsBox.Kind getKind() {
        return this.kind;
    }

    public Mp4EsdsBox.AudioProfile getProfile() {
        return this.profile;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public void setKind(Mp4EsdsBox.Kind kind) {
        this.kind = kind;
    }

    public void setProfile(Mp4EsdsBox.AudioProfile audioProfile) {
        this.profile = audioProfile;
    }
}
