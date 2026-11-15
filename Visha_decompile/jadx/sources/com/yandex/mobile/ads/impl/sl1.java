package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class sl1 implements bm1, xi1 {
    private final bm1 a;
    private ci1 b;
    private ob0 c;

    public sl1(bm1 bm1Var) {
        y45.j(bm1Var, "progressProvider");
        this.a = bm1Var;
        this.b = ci1.a.a();
    }

    @Override
    public final ci1 a() {
        bm1 bm1Var = this.c;
        if (bm1Var == null) {
            bm1Var = this.a;
        }
        ci1 ci1VarA = bm1Var.a();
        this.b = ci1VarA;
        return ci1VarA;
    }

    @Override
    public final void a(com.google.android.exoplayer2.t tVar) {
        this.c = tVar == null ? new ob0(this.b) : null;
    }
}
