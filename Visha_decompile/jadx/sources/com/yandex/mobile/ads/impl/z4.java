package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.LinkedHashMap;

public final class z4 {
    private final LinkedHashMap a = new LinkedHashMap();
    private final LinkedHashMap b = new LinkedHashMap();

    public final u4 a(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        return (u4) this.a.get(go0Var);
    }

    public final go0 a(u4 u4Var) {
        y45.j(u4Var, "adInfo");
        return (go0) this.b.get(u4Var);
    }

    public final void a(u4 u4Var, go0 go0Var) {
        y45.j(go0Var, "videoAd");
        y45.j(u4Var, "adInfo");
        this.a.put(go0Var, u4Var);
        this.b.put(u4Var, go0Var);
    }
}
