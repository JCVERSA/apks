package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ro0 {
    private final jm0 a;
    private final gf2 b;
    private final nb2 c;
    private final c d;
    private final a e;
    private final b f;
    private final cf2 g;
    private final w8 h;
    private u8 i;
    private so0 j;
    private boolean k;

    public final class a implements y8 {
        public a() {
        }

        @Override
        public final void a() {
            ro0.this.e();
        }

        @Override
        public final void b() {
            ro0.g(ro0.this);
        }

        @Override
        public final void c() {
            ro0.e(ro0.this);
        }
    }

    public final class b implements y8 {
        public b() {
        }

        @Override
        public final void a() {
            ro0.c(ro0.this);
        }

        @Override
        public final void b() {
            ro0.g(ro0.this);
        }

        @Override
        public final void c() {
            ro0.c(ro0.this);
        }
    }

    public final class c implements y8 {
        public c() {
        }

        @Override
        public final void a() {
            ro0.this.k = false;
            ro0.d(ro0.this);
        }

        @Override
        public final void b() {
            boolean z = ro0.this.k;
            ro0.this.k = false;
            if (z) {
                ro0.g(ro0.this);
                return;
            }
            so0 so0Var = ro0.this.j;
            if (so0Var != null) {
                so0Var.onInstreamAdPrepared();
            }
        }

        @Override
        public final void c() {
            ro0.d(ro0.this);
        }
    }

    public ro0(Context context, bv1 bv1Var, et etVar, jm0 jm0Var, cn0 cn0Var, gf2 gf2Var, am0 am0Var) {
        this(context, bv1Var, etVar, jm0Var, cn0Var, gf2Var, am0Var, new df2(), new nb2());
    }

    public static final void c(ro0 ro0Var) {
        so0 so0Var = ro0Var.j;
        if (so0Var != null) {
            so0Var.a();
        }
        ro0Var.b.h();
        ro0Var.a.b();
    }

    public static final void d(ro0 ro0Var) {
        u8 u8VarA = ro0Var.h.a();
        ro0Var.i = u8VarA;
        u8VarA.a(ro0Var.e);
        u8 u8Var = ro0Var.i;
        if (u8Var != null) {
            u8Var.f();
        }
    }

    public static final void e(ro0 ro0Var) {
        u8 u8VarB = ro0Var.h.b();
        ro0Var.i = u8VarB;
        if (u8VarB != null) {
            u8VarB.a(ro0Var.f);
            u8 u8Var = ro0Var.i;
            if (u8Var != null) {
                u8Var.f();
                return;
            }
            return;
        }
        so0 so0Var = ro0Var.j;
        if (so0Var != null) {
            so0Var.a();
        }
        ro0Var.b.h();
        ro0Var.a.b();
    }

    public static final void g(ro0 ro0Var) {
        u8 u8Var = ro0Var.i;
        if (u8Var != null) {
            u8Var.h();
        }
    }

    public final void h() {
        if (this.i != null) {
            so0 so0Var = this.j;
            if (so0Var != null) {
                so0Var.onInstreamAdPrepared();
                return;
            }
            return;
        }
        u8 u8VarC = this.h.c();
        this.i = u8VarC;
        if (u8VarC == null) {
            so0 so0Var2 = this.j;
            if (so0Var2 != null) {
                so0Var2.onInstreamAdPrepared();
                return;
            }
            return;
        }
        u8VarC.a(this.d);
        this.k = false;
        u8 u8Var = this.i;
        if (u8Var != null) {
            u8Var.f();
        }
    }

    public final void i() {
        u8 u8Var = this.i;
        if (u8Var != null) {
            u8Var.g();
        }
    }

    public final void j() {
        this.g.f();
        u8 u8Var = this.i;
        if (u8Var != null) {
            u8Var.e();
        }
    }

    public final void a() {
        this.g.a();
    }

    public final void b() {
        u8 u8Var = this.i;
        if (u8Var != null) {
            u8Var.g();
            return;
        }
        so0 so0Var = this.j;
        if (so0Var != null) {
            so0Var.a();
        }
        this.b.h();
        this.a.b();
    }

    public final void f() {
        if (this.i != null) {
            this.g.c();
            u8 u8Var = this.i;
            if (u8Var != null) {
                u8Var.h();
                return;
            }
            return;
        }
        u8 u8VarC = this.h.c();
        this.i = u8VarC;
        if (u8VarC != null) {
            u8VarC.a(this.d);
            this.g.c();
            this.k = true;
            u8 u8Var2 = this.i;
            if (u8Var2 != null) {
                u8Var2.f();
                return;
            }
            return;
        }
        u8 u8VarA = this.h.a();
        this.i = u8VarA;
        u8VarA.a(this.e);
        u8 u8Var3 = this.i;
        if (u8Var3 != null) {
            u8Var3.f();
        }
    }

    public final void a(lo0 lo0Var) {
        this.c.a(lo0Var);
    }

    public final void g() {
        this.b.a(this.g);
        this.g.d();
    }

    public ro0(Context context, bv1 bv1Var, et etVar, jm0 jm0Var, cn0 cn0Var, gf2 gf2Var, am0 am0Var, df2 df2Var, nb2 nb2Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(etVar, "instreamVideoAd");
        y45.j(jm0Var, "instreamAdPlayerController");
        y45.j(cn0Var, "instreamAdViewsHolderManager");
        y45.j(gf2Var, "videoPlayerController");
        y45.j(am0Var, "customUiElementsHolder");
        y45.j(df2Var, "videoPlaybackControllerFactory");
        y45.j(nb2Var, "videoAdCreativePlaybackProxyListener");
        this.a = jm0Var;
        this.b = gf2Var;
        this.c = nb2Var;
        this.d = new c();
        this.e = new a();
        this.f = new b();
        df2Var.getClass();
        cf2 cf2VarA = df2.a(gf2Var, this);
        this.g = cf2VarA;
        this.h = new w8(context, bv1Var, etVar, jm0Var, cn0Var, gf2Var, cf2VarA, nb2Var, am0Var);
    }

    public final void a(so0 so0Var) {
        this.j = so0Var;
    }

    public final void c() {
        u8 u8Var = this.i;
        if (u8Var != null) {
            u8Var.d();
        }
        this.a.b();
    }

    public final void d() {
        c();
        this.b.h();
        this.g.b();
    }

    public final void e() {
        so0 so0Var = this.j;
        if (so0Var != null) {
            so0Var.b();
        }
        this.b.h();
        this.a.b();
    }
}
