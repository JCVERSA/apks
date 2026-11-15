package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class b91 {
    private final rt a;
    private final gr1 b;

    public b91(rt rtVar, gr1 gr1Var) {
        y45.j(rtVar, "adAssets");
        y45.j(gr1Var, "responseNativeType");
        this.a = rtVar;
        this.b = gr1Var;
    }

    public static boolean a(tt ttVar) {
        y45.j(ttVar, "image");
        return y45.e("large", ttVar.c()) || y45.e("wide", ttVar.c());
    }

    public final boolean b() {
        return this.a.g() != null && (gr1.d == this.b || !e());
    }

    public final boolean c() {
        return (d() || this.a.h() == null || !a(this.a.h())) ? false : true;
    }

    public final boolean d() {
        return this.a.i() != null;
    }

    public final boolean e() {
        return (d() || this.a.h() == null || a(this.a.h()) || gr1.d == this.b) ? false : true;
    }

    public final boolean a() {
        return (b() || this.a.e() == null || !(d() || this.a.h() == null || a(this.a.h()))) ? false : true;
    }
}
