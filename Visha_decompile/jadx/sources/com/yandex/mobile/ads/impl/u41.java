package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.y45;
import java.util.Map;

public final class u41 {
    private final Map<ca1, t41> a;

    public u41(bv1 bv1Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        this.a = kotlin.collections.a.p(abb.a(ca1.c, new v81(bv1Var)), abb.a(ca1.d, new g81(bv1Var)), abb.a(ca1.e, new zz1()));
    }

    public final t41 a(ca1 ca1Var) {
        return this.a.get(ca1Var);
    }
}
