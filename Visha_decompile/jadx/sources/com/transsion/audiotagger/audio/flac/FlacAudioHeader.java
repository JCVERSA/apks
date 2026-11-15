package com.transsion.audiotagger.audio.flac;

import com.transsion.audiotagger.audio.generic.GenericAudioHeader;

public class FlacAudioHeader extends GenericAudioHeader {
    private String md5;

    public String getMd5() {
        return this.md5;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }
}
