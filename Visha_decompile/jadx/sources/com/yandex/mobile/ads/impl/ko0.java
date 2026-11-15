package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.LinkedHashMap;

public final class ko0 {
    private final LinkedHashMap a = new LinkedHashMap();

    public final ln0 a(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        return (ln0) this.a.get(zb2Var);
    }

    public final void a(zb2<go0> zb2Var, ln0 ln0Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(ln0Var, "controlsState");
        this.a.put(zb2Var, ln0Var);
    }
}
