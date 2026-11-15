package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class q62 {
    private final String a;
    private final long b;
    private final int c;
    private final fy1 d;
    private Long e;

    public q62(int i, long j, fy1 fy1Var, String str) {
        y45.j(str, "url");
        y45.j(fy1Var, "showNoticeType");
        this.a = str;
        this.b = j;
        this.c = i;
        this.d = fy1Var;
    }

    public final long a() {
        return this.b;
    }

    public final Long b() {
        return this.e;
    }

    public final fy1 c() {
        return this.d;
    }

    public final String d() {
        return this.a;
    }

    public final int e() {
        return this.c;
    }

    public final void a(Long l) {
        this.e = l;
    }
}
