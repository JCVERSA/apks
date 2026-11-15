package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class i4 implements pc2<go0> {
    private final lo0 a;
    private final kv b;
    private b4 c;

    public i4(nb2 nb2Var, kv kvVar) {
        y45.j(nb2Var, "adCreativePlaybackListener");
        y45.j(kvVar, "currentAdCreativePlaybackEventListener");
        this.a = nb2Var;
        this.b = kvVar;
    }

    private final boolean h(zb2<go0> zb2Var) {
        b4 b4Var = this.c;
        return y45.e(b4Var != null ? b4Var.b() : null, zb2Var);
    }

    @Override
    public final void a(zb2<go0> zb2Var, xc2 xc2Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(xc2Var, "videoAdPlayerError");
        this.a.h(zb2Var.d());
        if (h(zb2Var)) {
            this.b.a(zb2Var, xc2Var);
        }
    }

    @Override
    public final void b(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.c(zb2Var.d());
        if (h(zb2Var)) {
            this.b.b(zb2Var);
        }
    }

    @Override
    public final void c(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.d(zb2Var.d());
        if (h(zb2Var)) {
            this.b.c(zb2Var);
        }
    }

    @Override
    public final void d(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.b(zb2Var.d());
        if (h(zb2Var)) {
            this.b.d(zb2Var);
        }
    }

    @Override
    public final void e(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.f(zb2Var.d());
        if (h(zb2Var)) {
            this.b.e(zb2Var);
        }
    }

    @Override
    public final void f(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.e(zb2Var.d());
        if (h(zb2Var)) {
            this.b.f(zb2Var);
        }
    }

    @Override
    public final void g(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.g(zb2Var.d());
        if (h(zb2Var)) {
            this.b.g(zb2Var);
        }
    }

    @Override
    public final void i(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.j(zb2Var.d());
    }

    @Override
    public final void j(zb2<go0> zb2Var) {
        k4 k4VarA;
        do0 do0VarA;
        y45.j(zb2Var, "videoAdInfo");
        b4 b4Var = this.c;
        if (b4Var == null || (k4VarA = b4Var.a(zb2Var)) == null || (do0VarA = k4VarA.a()) == null) {
            return;
        }
        do0VarA.e();
    }

    @Override
    public final void k(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
    }

    @Override
    public final void l(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
    }

    @Override
    public final void a(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.a(zb2Var.d());
        if (h(zb2Var)) {
            this.b.a(zb2Var);
        }
    }

    @Override
    public final void a(zb2<go0> zb2Var, float f) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.a(zb2Var.d(), f);
    }

    public final void a(b4 b4Var) {
        this.c = b4Var;
    }
}
