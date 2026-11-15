package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class v01 implements x8, hj1, v2 {
    private final z2 a;
    private final cf2 b;
    private final nb2 c;
    private final u01 d;
    private final a e;
    private final fj1 f;
    private y8 g;
    private u2 h;

    public final class a implements ef2 {
        public a() {
        }

        @Override
        public final void a() {
            v01.this.f.b();
            u2 u2Var = v01.this.h;
            if (u2Var != null) {
                u2Var.c();
            }
        }

        @Override
        public final void onVideoCompleted() {
            v01.e(v01.this);
            v01.this.f.b();
            v01.this.b.a(null);
            y8 y8Var = v01.this.g;
            if (y8Var != null) {
                y8Var.c();
            }
        }

        @Override
        public final void onVideoError() {
            v01.this.f.b();
            v01.this.b.a(null);
            u2 u2Var = v01.this.h;
            if (u2Var != null) {
                u2Var.c();
            }
            y8 y8Var = v01.this.g;
            if (y8Var != null) {
                y8Var.a();
            }
        }

        @Override
        public final void onVideoPaused() {
            v01.this.f.b();
        }

        @Override
        public final void onVideoResumed() {
            v01.this.f.a();
        }
    }

    public v01(Context context, om0 om0Var, z2 z2Var, jm0 jm0Var, ym0 ym0Var, cn0 cn0Var, gf2 gf2Var, cf2 cf2Var, nb2 nb2Var, gj1 gj1Var) {
        y45.j(context, "context");
        y45.j(om0Var, "instreamAdPlaylist");
        y45.j(z2Var, "adBreakStatusController");
        y45.j(jm0Var, "instreamAdPlayerController");
        y45.j(ym0Var, "interfaceElementsManager");
        y45.j(cn0Var, "instreamAdViewsHolderManager");
        y45.j(gf2Var, "videoPlayerController");
        y45.j(cf2Var, "videoPlaybackController");
        y45.j(nb2Var, "videoAdCreativePlaybackProxyListener");
        y45.j(gj1Var, "schedulerCreator");
        this.a = z2Var;
        this.b = cf2Var;
        this.c = nb2Var;
        this.d = new u01(context, z2Var, jm0Var, ym0Var, cn0Var, nb2Var);
        this.e = new a();
        this.f = gj1Var.a(om0Var, this);
    }

    public static final void e(v01 v01Var) {
        u2 u2Var = v01Var.h;
        if (u2Var != null) {
            u2Var.a((v2) null);
        }
        u2 u2Var2 = v01Var.h;
        if (u2Var2 != null) {
            u2Var2.e();
        }
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b() {
    }

    @Override
    public final void f() {
        this.f.b();
        u2 u2Var = this.h;
        if (u2Var != null) {
            u2Var.c();
        }
    }

    @Override
    public final void g() {
        this.h = null;
        this.b.e();
    }

    @Override
    public final void prepare() {
        y8 y8Var = this.g;
        if (y8Var != null) {
            y8Var.b();
        }
    }

    @Override
    public final void resume() {
        zfb zfbVar;
        u2 u2Var = this.h;
        if (u2Var != null) {
            if (this.a.a()) {
                this.b.c();
                u2Var.f();
            } else {
                this.b.e();
                u2Var.d();
            }
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            this.b.e();
        }
    }

    @Override
    public final void start() {
        this.b.a(this.e);
        this.b.e();
    }

    @Override
    public final void c() {
        this.f.b();
        u2 u2Var = this.h;
        if (u2Var != null) {
            u2Var.b();
        }
    }

    @Override
    public final void d() {
        this.b.c();
    }

    @Override
    public final void a(gt gtVar) {
        y45.j(gtVar, "adBreak");
        u2 u2VarA = this.d.a(gtVar);
        if (!y45.e(u2VarA, this.h)) {
            u2 u2Var = this.h;
            if (u2Var != null) {
                u2Var.a((v2) null);
            }
            u2 u2Var2 = this.h;
            if (u2Var2 != null) {
                u2Var2.e();
            }
        }
        u2VarA.a(this);
        u2VarA.g();
        this.h = u2VarA;
    }

    @Override
    public final void b(gt gtVar) {
        y45.j(gtVar, "adBreak");
        u2 u2VarA = this.d.a(gtVar);
        if (!y45.e(u2VarA, this.h)) {
            u2 u2Var = this.h;
            if (u2Var != null) {
                u2Var.a((v2) null);
            }
            u2 u2Var2 = this.h;
            if (u2Var2 != null) {
                u2Var2.e();
            }
        }
        u2VarA.a(this);
        u2VarA.d();
        this.h = u2VarA;
    }

    @Override
    public final void e() {
        this.h = null;
        this.b.e();
    }

    @Override
    public final void a(lo0 lo0Var) {
        this.c.a(lo0Var);
    }

    @Override
    public final void a(y8 y8Var) {
        this.g = y8Var;
    }
}
