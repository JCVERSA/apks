package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class oc2<T> implements yc2 {
    private final zb2<T> a;
    private final wc2<T> b;
    private final gd2 c;
    private final jd2 d;
    private final qd2 e;
    private final g5 f;
    private final mg2 g;
    private final pc2<T> h;
    private vc2 i;
    private boolean j;

    public oc2(zb2 zb2Var, wc2 wc2Var, gd2 gd2Var, jd2 jd2Var, qd2 qd2Var, g5 g5Var, ng2 ng2Var, pc2 pc2Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(wc2Var, "videoAdPlayer");
        y45.j(gd2Var, "progressTrackingManager");
        y45.j(jd2Var, "videoAdRenderingController");
        y45.j(qd2Var, "videoAdStatusController");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(ng2Var, "videoTracker");
        y45.j(pc2Var, "playbackEventsListener");
        this.a = zb2Var;
        this.b = wc2Var;
        this.c = gd2Var;
        this.d = jd2Var;
        this.e = qd2Var;
        this.f = g5Var;
        this.g = ng2Var;
        this.h = pc2Var;
    }

    @Override
    public final void a(rc2 rc2Var) {
        y45.j(rc2Var, "playbackInfo");
        this.j = false;
        this.e.b(pd2.g);
        this.g.b();
        this.c.b();
        this.d.c();
        this.h.g(this.a);
        this.b.a((oc2) null);
        this.h.j(this.a);
    }

    @Override
    public final void b(rc2 rc2Var) {
        y45.j(rc2Var, "playbackInfo");
        this.e.b(pd2.h);
        if (this.j) {
            this.g.d();
        }
        this.h.b(this.a);
    }

    @Override
    public final void c(rc2 rc2Var) {
        y45.j(rc2Var, "playbackInfo");
        if (this.j) {
            this.e.b(pd2.e);
            this.g.j();
        }
    }

    @Override
    public final void d(rc2 rc2Var) {
        y45.j(rc2Var, "playbackInfo");
        this.e.b(pd2.d);
        this.f.a(f5.x);
        this.h.d(this.a);
    }

    @Override
    public final void e(rc2 rc2Var) {
        y45.j(rc2Var, "playbackInfo");
        this.g.g();
        this.j = false;
        this.e.b(pd2.f);
        this.c.b();
        this.d.d();
        this.h.e(this.a);
        this.b.a((oc2) null);
        this.h.j(this.a);
    }

    @Override
    public final void f(rc2 rc2Var) {
        y45.j(rc2Var, "playbackInfo");
        if (this.j) {
            this.e.b(pd2.i);
            this.g.f();
        }
    }

    @Override
    public final void g(rc2 rc2Var) {
        y45.j(rc2Var, "playbackInfo");
        this.e.b(pd2.e);
        if (this.j) {
            this.g.c();
        }
        this.c.a();
        this.h.f(this.a);
    }

    @Override
    public final void h(rc2 rc2Var) {
        y45.j(rc2Var, "playbackInfo");
        this.j = true;
        this.e.b(pd2.e);
        this.c.a();
        this.i = new vc2(this.b, this.g);
        this.h.c(this.a);
    }

    @Override
    public final void a(xn0 xn0Var) {
        y45.j(xn0Var, "playbackInfo");
        this.g.e();
        this.j = false;
        this.e.b(pd2.f);
        this.c.b();
        this.d.d();
        this.h.a(this.a);
        this.b.a((oc2) null);
        this.h.j(this.a);
    }

    @Override
    public final void a(rc2 rc2Var, xc2 xc2Var) {
        pd2 pd2Var;
        y45.j(rc2Var, "playbackInfo");
        y45.j(xc2Var, "videoAdPlayerError");
        this.j = false;
        if (this.e.a(pd2.d)) {
            pd2Var = pd2.j;
        } else {
            pd2Var = pd2.k;
        }
        this.e.b(pd2Var);
        this.c.b();
        this.d.a(xc2Var);
        this.g.a(xc2Var);
        this.h.a(this.a, xc2Var);
        this.b.a((oc2) null);
        this.h.j(this.a);
    }

    @Override
    public final void a(rc2 rc2Var, float f) {
        y45.j(rc2Var, "playbackInfo");
        this.g.a(f);
        vc2 vc2Var = this.i;
        if (vc2Var != null) {
            vc2Var.a(f);
        }
        this.h.a(this.a, f);
    }
}
