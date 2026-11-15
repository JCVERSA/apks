package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.concurrent.atomic.AtomicInteger;

public final class eo0 implements pc2<go0>, tn0.a {
    private final pc2<go0> a;
    private final AtomicInteger b;

    public eo0(pc2<go0> pc2Var) {
        y45.j(pc2Var, "listener");
        this.a = pc2Var;
        this.b = new AtomicInteger(2);
    }

    private final void m(zb2<go0> zb2Var) {
        if (this.b.decrementAndGet() == 0) {
            this.a.d(zb2Var);
        }
    }

    public final void a() {
        this.b.set(2);
    }

    @Override
    public final void b(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.b(zb2Var);
    }

    @Override
    public final void c(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.c(zb2Var);
    }

    @Override
    public final void d(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        m(zb2Var);
    }

    @Override
    public final void e(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.e(zb2Var);
    }

    @Override
    public final void f(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.f(zb2Var);
    }

    @Override
    public final void g(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.g(zb2Var);
    }

    @Override
    public final void h(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        m(zb2Var);
    }

    @Override
    public final void i(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.i(zb2Var);
    }

    @Override
    public final void j(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.j(zb2Var);
    }

    @Override
    public final void k(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.k(zb2Var);
    }

    @Override
    public final void l(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.l(zb2Var);
    }

    @Override
    public final void a(zb2<go0> zb2Var, xc2 xc2Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(xc2Var, "videoAdPlayerError");
        this.a.a(zb2Var, xc2Var);
    }

    @Override
    public final void a(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.a(zb2Var);
    }

    @Override
    public final void a(zb2<go0> zb2Var, float f) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.a(zb2Var, f);
    }
}
