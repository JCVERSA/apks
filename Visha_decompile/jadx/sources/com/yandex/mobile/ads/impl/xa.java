package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class xa implements zg1 {
    private final op1.c a;
    private final String b;

    public xa(op1.c cVar, String str) {
        y45.j(cVar, "status");
        this.a = cVar;
        this.b = str;
    }

    @Override
    public final Map<String, Object> a(long j) {
        pp1 pp1Var = new pp1((Map) null, 3);
        pp1Var.b(this.b, "adapter");
        pp1Var.b(this.a.a(), "status");
        pp1Var.b(Long.valueOf(j), "duration");
        return pp1Var.b();
    }
}
