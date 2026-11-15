package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class co0 implements wc2<go0> {
    private final go0 a;
    private final jm0 b;
    private a c;

    public co0(go0 go0Var, jm0 jm0Var) {
        y45.j(go0Var, "instreamVideoAd");
        y45.j(jm0Var, "instreamAdPlayerController");
        this.a = go0Var;
        this.b = jm0Var;
    }

    @Override
    public final void a(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.b.g(zb2Var.d());
    }

    @Override
    public final long b() {
        return this.b.a(this.a);
    }

    @Override
    public final void c() {
        this.b.f(this.a);
    }

    public final void d() {
        this.b.h(this.a);
    }

    public final void e() {
        this.b.j(this.a);
    }

    @Override
    public final long getAdPosition() {
        return this.b.b(this.a);
    }

    @Override
    public final float getVolume() {
        return this.b.c(this.a);
    }

    @Override
    public final boolean isPlayingAd() {
        return this.b.d(this.a);
    }

    @Override
    public final void pauseAd() {
        this.b.e(this.a);
    }

    @Override
    public final void resumeAd() {
        this.b.i(this.a);
    }

    public static final class a implements lt {
        private final yc2 a;

        public a(oc2 oc2Var) {
            y45.j(oc2Var, "listener");
            this.a = oc2Var;
        }

        @Override
        public final void a(go0 go0Var) {
            y45.j(go0Var, "videoAd");
            this.a.a(go0Var.g());
        }

        @Override
        public final void b(go0 go0Var) {
            y45.j(go0Var, "videoAd");
            this.a.d(go0Var.g());
        }

        @Override
        public final void c(go0 go0Var) {
            y45.j(go0Var, "videoAd");
            this.a.b(go0Var.g());
        }

        @Override
        public final void d(go0 go0Var) {
            y45.j(go0Var, "videoAd");
            this.a.h(go0Var.g());
        }

        @Override
        public final void e(go0 go0Var) {
            y45.j(go0Var, "videoAd");
            this.a.g(go0Var.g());
        }

        @Override
        public final void f(go0 go0Var) {
            y45.j(go0Var, "videoAd");
            this.a.e(go0Var.g());
        }

        @Override
        public final void g(go0 go0Var) {
            y45.j(go0Var, "videoAd");
            this.a.a((rc2) go0Var.g());
        }

        @Override
        public final void h(go0 go0Var) {
            y45.j(go0Var, "videoAd");
            this.a.c(go0Var.g());
        }

        @Override
        public final void i(go0 go0Var) {
            y45.j(go0Var, "videoAd");
            this.a.f(go0Var.g());
        }

        @Override
        public final void a(go0 go0Var, xc2 xc2Var) {
            y45.j(go0Var, "videoAd");
            y45.j(xc2Var, "error");
            this.a.a(go0Var.g(), xc2Var);
        }

        @Override
        public final void a(go0 go0Var, float f) {
            y45.j(go0Var, "videoAd");
            this.a.a(go0Var.g(), f);
        }
    }

    @Override
    public final void a(oc2 oc2Var) {
        a aVar = this.c;
        if (aVar != null) {
            this.b.b(this.a, aVar);
            this.c = null;
        }
        if (oc2Var != null) {
            a aVar2 = new a(oc2Var);
            this.b.a(this.a, aVar2);
            this.c = aVar2;
        }
    }

    public final void a(float f) {
        this.b.a(this.a, f);
    }

    @Override
    public final void a() {
        this.b.k(this.a);
    }
}
