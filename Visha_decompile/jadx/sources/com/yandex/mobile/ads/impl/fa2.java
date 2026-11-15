package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.y45;
import java.util.Map;

public final class fa2 implements zg1 {
    private final String a;
    private final sb2 b;

    public fa2(String str, sb2 sb2Var) {
        y45.j(str, "responseStatus");
        this.a = str;
        this.b = sb2Var;
    }

    @Override
    public final Map<String, Object> a(long j) {
        Map<String, Object> mapQ = kotlin.collections.a.q(abb.a("duration", Long.valueOf(j)), abb.a("status", this.a));
        sb2 sb2Var = this.b;
        if (sb2Var != null) {
            mapQ.put("failure_reason", sb2Var.a());
        }
        return mapQ;
    }
}
