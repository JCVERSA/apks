package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Collection;
import java.util.LinkedHashMap;

public final class r9 {
    private cj1 a;
    private final LinkedHashMap b = new LinkedHashMap();

    public r9(cj1 cj1Var) {
        this.a = cj1Var;
    }

    public final void a() {
        this.b.clear();
    }

    public final boolean b() {
        Collection collectionValues = this.b.values();
        return collectionValues.contains(wm0.d) || collectionValues.contains(wm0.e);
    }

    public final cj1 c() {
        return this.a;
    }

    public final wm0 a(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        wm0 wm0Var = (wm0) this.b.get(go0Var);
        return wm0Var == null ? wm0.b : wm0Var;
    }

    public final void a(go0 go0Var, wm0 wm0Var) {
        y45.j(go0Var, "videoAd");
        y45.j(wm0Var, "instreamAdStatus");
        this.b.put(go0Var, wm0Var);
    }

    public final void a(cj1 cj1Var) {
        this.a = cj1Var;
    }
}
