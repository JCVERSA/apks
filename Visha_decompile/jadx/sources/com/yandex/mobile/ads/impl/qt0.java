package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class qt0 implements h82 {
    private final gt a;
    private final xt0 b;
    private final nb2 c;
    private final tt0 d;
    private final lm0 e;
    private st0 f;
    private kt g;

    public qt0(Context context, bv1 bv1Var, gt gtVar, z2 z2Var, am0 am0Var, mm0 mm0Var, xt0 xt0Var, nb2 nb2Var, tt0 tt0Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(gtVar, "instreamAdBreak");
        y45.j(z2Var, "adBreakStatusController");
        y45.j(am0Var, "customUiElementsHolder");
        y45.j(mm0Var, "instreamAdPlayerReuseControllerFactory");
        y45.j(xt0Var, "manualPlaybackEventListener");
        y45.j(nb2Var, "videoAdCreativePlaybackProxyListener");
        y45.j(tt0Var, "presenterProvider");
        this.a = gtVar;
        this.b = xt0Var;
        this.c = nb2Var;
        this.d = tt0Var;
        mm0Var.getClass();
        this.e = mm0.a(this);
    }

    public final gt a() {
        return this.a;
    }

    public final void b() {
        st0 st0Var = this.f;
        if (st0Var != null) {
            st0Var.a();
        }
        kt ktVar = this.g;
        if (ktVar != null) {
            this.e.b(ktVar);
        }
        this.f = null;
        this.g = null;
    }

    public final void c() {
        st0 st0Var = this.f;
        if (st0Var != null) {
            st0Var.b();
        }
    }

    public final void d() {
        st0 st0Var = this.f;
        if (st0Var != null) {
            st0Var.d();
        }
    }

    @Override
    public final void invalidateAdPlayer() {
        st0 st0Var = this.f;
        if (st0Var != null) {
            st0Var.a();
        }
        kt ktVar = this.g;
        if (ktVar != null) {
            this.e.b(ktVar);
        }
        this.f = null;
        this.g = null;
    }

    public final void a(t70 t70Var) {
        y45.j(t70Var, "instreamAdView");
        st0 st0Var = this.f;
        if (st0Var != null) {
            st0Var.a(t70Var);
        }
    }

    public final void a(hm2 hm2Var) {
        y45.j(hm2Var, "player");
        st0 st0Var = this.f;
        if (st0Var != null) {
            st0Var.a();
        }
        kt ktVar = this.g;
        if (ktVar != null) {
            this.e.b(ktVar);
        }
        this.f = null;
        this.g = hm2Var;
        this.e.a(hm2Var);
        st0 st0VarA = this.d.a(hm2Var);
        st0VarA.a(this.c);
        st0VarA.c();
        this.f = st0VarA;
    }

    public final void a(lo0 lo0Var) {
        this.c.a(lo0Var);
    }

    public final void a(cm2 cm2Var) {
        this.b.a(cm2Var);
    }
}
