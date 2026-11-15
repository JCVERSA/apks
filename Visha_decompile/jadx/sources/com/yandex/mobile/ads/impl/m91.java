package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class m91 {
    private final rt a;
    private final gr1 b;

    public m91(rt rtVar, gr1 gr1Var) {
        y45.j(rtVar, "adAssets");
        y45.j(gr1Var, "responseNativeType");
        this.a = rtVar;
        this.b = gr1Var;
    }

    private final boolean b() {
        return this.a.c() != null && (gr1.c == this.b || !d());
    }

    private final boolean d() {
        return (this.a.k() == null && this.a.l() == null) ? false : true;
    }

    public final boolean a() {
        return (this.a.n() == null && this.a.b() == null && this.a.d() == null && this.a.g() == null && this.a.e() == null) ? false : true;
    }

    public final boolean c() {
        return this.a.h() != null && (y45.e("large", this.a.h().c()) || y45.e("wide", this.a.h().c()));
    }

    public final boolean e() {
        return (this.a.a() == null && this.a.m() == null && !a()) ? false : true;
    }

    public final boolean f() {
        return this.a.c() != null || d();
    }

    public final boolean g() {
        return b();
    }

    public final boolean h() {
        return this.a.c() != null && (b() || c());
    }

    public final boolean i() {
        return this.a.o() != null;
    }

    public final boolean j() {
        return b() || (c() && !d());
    }
}
