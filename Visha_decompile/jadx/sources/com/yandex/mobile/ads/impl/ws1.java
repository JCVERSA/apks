package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.LinkedHashSet;

public final class ws1 {
    private final LinkedHashSet a = new LinkedHashSet();

    public final synchronized void a(vs1 vs1Var) {
        y45.j(vs1Var, "route");
        this.a.remove(vs1Var);
    }

    public final synchronized void b(vs1 vs1Var) {
        y45.j(vs1Var, "failedRoute");
        this.a.add(vs1Var);
    }

    public final synchronized boolean c(vs1 vs1Var) {
        y45.j(vs1Var, "route");
        return this.a.contains(vs1Var);
    }
}
