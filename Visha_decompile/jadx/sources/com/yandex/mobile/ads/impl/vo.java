package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.LinkedHashMap;

public final class vo {
    private final LinkedHashMap a = new LinkedHashMap();

    public final void a(int i, uo uoVar) {
        y45.j(uoVar, "clickConnector");
        this.a.put(Integer.valueOf(i), uoVar);
    }

    public final LinkedHashMap a() {
        return this.a;
    }
}
