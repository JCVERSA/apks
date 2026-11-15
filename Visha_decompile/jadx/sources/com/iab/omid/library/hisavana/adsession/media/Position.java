package com.iab.omid.library.hisavana.adsession.media;

import com.yandex.mobile.ads.instream.InstreamAdBreakType;

public enum Position {
    PREROLL(InstreamAdBreakType.PREROLL),
    MIDROLL(InstreamAdBreakType.MIDROLL),
    POSTROLL(InstreamAdBreakType.POSTROLL),
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
