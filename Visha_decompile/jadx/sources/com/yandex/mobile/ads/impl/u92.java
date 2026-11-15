package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class u92 {
    private final String a;
    private final List<mb2> b;

    public u92(String str, List<mb2> list) {
        y45.j(str, "version");
        y45.j(list, "videoAds");
        this.a = str;
        this.b = list;
    }

    public final String a() {
        return this.a;
    }

    public final List<mb2> b() {
        return this.b;
    }
}
