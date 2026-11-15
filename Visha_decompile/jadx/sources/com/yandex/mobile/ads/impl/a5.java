package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.LinkedHashMap;

public final class a5 {
    private final LinkedHashMap a = new LinkedHashMap();
    private final LinkedHashMap b = new LinkedHashMap();

    public final v4 a(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        return (v4) this.a.get(go0Var);
    }

    public final go0 a(v4 v4Var) {
        y45.j(v4Var, "adInfo");
        return (go0) this.b.get(v4Var);
    }

    public final void a(v4 v4Var, go0 go0Var) {
        y45.j(go0Var, "videoAd");
        y45.j(v4Var, "adInfo");
        this.a.put(go0Var, v4Var);
        this.b.put(v4Var, go0Var);
    }
}
