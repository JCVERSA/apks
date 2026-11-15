package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class wj implements xj {
    private final boolean a;
    private final boolean b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public wj(Map map) {
        this(map, nf0.a((Map<String, String>) map, vh0.f0, true), nf0.a((Map<String, String>) map, vh0.g0, true));
        nf0.a((Map<String, String>) map, vh0.e0, true);
    }

    @Override
    public final boolean a() {
        return this.b;
    }

    @Override
    public final boolean b() {
        return this.a;
    }

    public wj(Map map, boolean z, boolean z2) {
        y45.j(map, "headers");
        this.a = z;
        this.b = z2;
    }
}
