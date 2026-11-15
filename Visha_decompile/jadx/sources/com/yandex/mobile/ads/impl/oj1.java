package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.InstreamAdBreakType;

public enum oj1 {
    c(InstreamAdBreakType.PREROLL),
    d(InstreamAdBreakType.MIDROLL),
    e(InstreamAdBreakType.POSTROLL),
    f("standalone");

    private final String b;

    oj1(String str) {
        this.b = str;
    }

    @Override
    public final String toString() {
        return this.b;
    }
}
