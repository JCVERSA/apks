package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.y45;
import defpackage.ye9;
import java.util.Map;
import java.util.Set;

public final class wl0 {
    private static final Set<b52> b = ye9.h(b52.d, b52.e, b52.c, b52.b, b52.f);
    private static final Map<na2.b, ht.a> c = kotlin.collections.a.p(abb.a(na2.b.b, ht.a.c), abb.a(na2.b.c, ht.a.b), abb.a(na2.b.d, ht.a.d));
    private final d52 a;

    public wl0() {
        this(new d52(b));
    }

    public final ht a(a52 a52Var) {
        ht.a aVar;
        y45.j(a52Var, "timeOffset");
        na2 na2VarA = this.a.a(a52Var.a());
        if (na2VarA == null || (aVar = c.get(na2VarA.c())) == null) {
            return null;
        }
        return new ht(aVar, (long) na2VarA.d());
    }

    public wl0(d52 d52Var) {
        y45.j(d52Var, "timeOffsetParser");
        this.a = d52Var;
    }
}
