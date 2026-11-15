package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.InstreamAd;
import defpackage.y45;

public final class mt {
    public static et a(InstreamAd instreamAd) {
        y45.j(instreamAd, "instreamAd");
        if (instreamAd instanceof am2) {
            return ((am2) instreamAd).a();
        }
        throw new IllegalArgumentException("You should pass InstreamAd received from InstreamAdLoader");
    }
}
