package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class be {
    private final sp1 a;

    public be(sp1 sp1Var) {
        y45.j(sp1Var, "reporter");
        this.a = sp1Var;
    }

    public final void a(Map<Thread, StackTraceElement[]> map) {
        y45.j(map, "traces");
        this.a.reportAnr(map);
    }
}
