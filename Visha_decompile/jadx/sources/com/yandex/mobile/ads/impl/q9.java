package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Collection;
import java.util.LinkedHashMap;

public final class q9 {
    private bj1 a;
    private final LinkedHashMap b = new LinkedHashMap();

    public q9(bj1 bj1Var) {
        this.a = bj1Var;
    }

    public final void a() {
        this.b.clear();
    }

    public final boolean b() {
        Collection collectionValues = this.b.values();
        return collectionValues.contains(vm0.d) || collectionValues.contains(vm0.e);
    }

    public final bj1 c() {
        return this.a;
    }

    public final vm0 a(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        vm0 vm0Var = (vm0) this.b.get(go0Var);
        return vm0Var == null ? vm0.b : vm0Var;
    }

    public final void a(go0 go0Var, vm0 vm0Var) {
        y45.j(go0Var, "videoAd");
        y45.j(vm0Var, "instreamAdStatus");
        this.b.put(go0Var, vm0Var);
    }

    public final void a(bj1 bj1Var) {
        this.a = bj1Var;
    }
}
