package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class np1 implements nc2 {
    private final sa1 a;
    private final zb2<kb1> b;
    private final gd2 c;
    private final a d;
    private tc2 e;

    public np1(sa1 sa1Var, zb2 zb2Var, dd2 dd2Var) {
        ua1 ua1Var = new ua1(sa1Var);
        this(sa1Var, zb2Var, dd2Var, ua1Var, new gd2(ua1Var, dd2Var));
    }

    @Override
    public final void play() {
        this.a.a(this.d);
        this.a.a(this.b.d());
    }

    @Override
    public final void stop() {
        this.c.b();
        this.a.pauseAd();
        this.a.a();
    }

    @Override
    public final void a(tc2 tc2Var) {
        this.e = tc2Var;
    }

    public final class a implements yc2 {
        public a() {
        }

        @Override
        public final void a(rc2 rc2Var) {
            y45.j(rc2Var, "playbackInfo");
            np1.this.c.b();
            np1.this.a.a((yc2) null);
            tc2 tc2Var = np1.this.e;
            if (tc2Var != null) {
                tc2Var.b();
            }
        }

        @Override
        public final void b(rc2 rc2Var) {
            y45.j(rc2Var, "playbackInfo");
        }

        @Override
        public final void c(rc2 rc2Var) {
            y45.j(rc2Var, "playbackInfo");
        }

        @Override
        public final void d(rc2 rc2Var) {
            y45.j(rc2Var, "playbackInfo");
            np1.this.a.c();
        }

        @Override
        public final void e(rc2 rc2Var) {
            y45.j(rc2Var, "playbackInfo");
            np1.this.c.b();
            np1.this.a.a((yc2) null);
        }

        @Override
        public final void f(rc2 rc2Var) {
            y45.j(rc2Var, "playbackInfo");
        }

        @Override
        public final void g(rc2 rc2Var) {
            y45.j(rc2Var, "playbackInfo");
        }

        @Override
        public final void h(rc2 rc2Var) {
            y45.j(rc2Var, "playbackInfo");
            np1.this.c.a();
            tc2 tc2Var = np1.this.e;
            if (tc2Var != null) {
                tc2Var.c();
            }
        }

        @Override
        public final void a(xn0 xn0Var) {
            y45.j(xn0Var, "playbackInfo");
            np1.this.c.b();
            np1.this.a.a((yc2) null);
        }

        @Override
        public final void a(rc2 rc2Var, xc2 xc2Var) {
            y45.j(rc2Var, "playbackInfo");
            y45.j(xc2Var, "videoAdPlayerError");
            np1.this.c.b();
            np1.this.a.a((yc2) null);
            np1.this.a.a(xc2Var);
        }

        @Override
        public final void a(rc2 rc2Var, float f) {
            y45.j(rc2Var, "playbackInfo");
        }
    }

    public np1(sa1 sa1Var, zb2<kb1> zb2Var, dd2 dd2Var, wc2<?> wc2Var, gd2 gd2Var) {
        y45.j(sa1Var, "nativeVideoAdPlayer");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(dd2Var, "videoAdProgressEventsObservable");
        y45.j(wc2Var, "videoAdPlayer");
        y45.j(gd2Var, "videoAdProgressTrackingManager");
        this.a = sa1Var;
        this.b = zb2Var;
        this.c = gd2Var;
        this.d = new a();
    }
}
