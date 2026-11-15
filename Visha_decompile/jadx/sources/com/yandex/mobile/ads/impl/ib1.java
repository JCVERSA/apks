package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ib1 implements nc2 {
    private final sa1 a;
    private final ue2 b;
    private final qc2 c;
    private final v92<kb1> d;
    private tc2 e;

    public final class a implements pc2<kb1> {
        public a() {
        }

        private final void a() {
            tc2 tc2Var = ib1.this.e;
            if (tc2Var != null) {
                tc2Var.b();
            }
        }

        @Override
        public final void b(zb2<kb1> zb2Var) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
        }

        @Override
        public final void c(zb2<kb1> zb2Var) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
            ib1.this.c.b();
            tc2 tc2Var = ib1.this.e;
            if (tc2Var != null) {
                tc2Var.c();
            }
        }

        @Override
        public final void d(zb2<kb1> zb2Var) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
            ib1.this.d.c();
        }

        @Override
        public final void e(zb2<kb1> zb2Var) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
            a();
        }

        @Override
        public final void f(zb2<kb1> zb2Var) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
        }

        @Override
        public final void g(zb2<kb1> zb2Var) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
            ib1.this.c.a();
            a();
        }

        @Override
        public final void i(zb2<kb1> zb2Var) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
        }

        @Override
        public final void j(zb2<kb1> zb2Var) {
            y45.j(zb2Var, "videoAdInfo");
        }

        @Override
        public final void k(zb2<kb1> zb2Var) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
            ib1.this.b.h();
        }

        @Override
        public final void l(zb2<kb1> zb2Var) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
            ib1.this.b.d();
        }

        @Override
        public final void a(zb2<kb1> zb2Var, xc2 xc2Var) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
            y45.j(xc2Var, "videoAdPlayerError");
            ib1.this.a.a(xc2Var);
            tc2 tc2Var = ib1.this.e;
            if (tc2Var != null) {
                tc2Var.a();
            }
        }

        @Override
        public final void a(zb2<kb1> zb2Var) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
            a();
        }

        @Override
        public final void a(zb2<kb1> zb2Var, float f) {
            y45.j(zb2Var, "videoAdPlaybackInfo");
        }
    }

    public ib1(Context context, o8 o8Var, o3 o3Var, sa1 sa1Var, zb2 zb2Var, cc1 cc1Var, uc2 uc2Var, ng2 ng2Var, dd2 dd2Var, ue2 ue2Var) {
        this(context, o8Var, o3Var, sa1Var, zb2Var, cc1Var, uc2Var, ng2Var, dd2Var, ue2Var, new qc2(context, o3Var, uc2Var));
    }

    @Override
    public final void play() {
        this.d.d();
    }

    @Override
    public final void stop() {
        this.d.b();
        this.a.a();
    }

    @Override
    public final void a(tc2 tc2Var) {
        this.e = tc2Var;
    }

    public ib1(Context context, o8 o8Var, o3 o3Var, sa1 sa1Var, zb2 zb2Var, cc1 cc1Var, uc2 uc2Var, ng2 ng2Var, dd2 dd2Var, ue2 ue2Var, qc2 qc2Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(sa1Var, "videoAdPlayer");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(cc1Var, "videoViewProvider");
        y45.j(uc2Var, "playbackParametersProvider");
        y45.j(ng2Var, "videoTracker");
        y45.j(dd2Var, "progressEventsObservable");
        y45.j(ue2Var, "videoImpressionTrackingListener");
        y45.j(qc2Var, "playbackEventsReporter");
        this.a = sa1Var;
        this.b = ue2Var;
        this.c = qc2Var;
        v92<kb1> v92Var = new v92<>(context, o3Var, new ua1(sa1Var), cc1Var, zb2Var, new pb1(cc1Var), new qd2(), ng2Var, dd2Var, new a(), o8Var);
        this.d = v92Var;
        v92Var.a(uc2Var);
    }
}
