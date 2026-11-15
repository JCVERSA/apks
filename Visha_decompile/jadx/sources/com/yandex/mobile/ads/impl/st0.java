package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class st0 {
    private final jm0 a;
    private final xt0 b;
    private final yt0 c;
    private final cn0 d;
    private final u2 e;

    public final class a implements v2 {
        public a() {
        }

        @Override
        public final void a() {
            st0.this.b.onInstreamAdBreakPrepared();
        }

        @Override
        public final void b() {
            st0.this.b.onInstreamAdBreakStarted();
        }

        @Override
        public final void d() {
        }

        @Override
        public final void e() {
            st0.this.b.onInstreamAdBreakCompleted();
        }

        @Override
        public final void g() {
            st0.this.b.onInstreamAdBreakError("Ad player returned error");
        }
    }

    public st0(Context context, bv1 bv1Var, gt gtVar, jm0 jm0Var, z2 z2Var, xt0 xt0Var, am0 am0Var, yt0 yt0Var, cn0 cn0Var, u2 u2Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(gtVar, "instreamAdBreak");
        y45.j(jm0Var, "instreamAdPlayerController");
        y45.j(z2Var, "adBreakStatusController");
        y45.j(xt0Var, "manualPlaybackEventListener");
        y45.j(am0Var, "instreamAdCustomUiElementsHolder");
        y45.j(yt0Var, "manualPlaybackManager");
        y45.j(cn0Var, "instreamAdViewsHolderManager");
        y45.j(u2Var, "adBreakPlaybackController");
        this.a = jm0Var;
        this.b = xt0Var;
        this.c = yt0Var;
        this.d = cn0Var;
        this.e = u2Var;
    }

    public final void b() {
        bn0 bn0VarA = this.d.a();
        if (bn0VarA == null || bn0VarA.b() == null) {
            return;
        }
        this.e.a();
    }

    public final void c() {
        this.a.a();
        this.e.a(new a());
        this.e.d();
    }

    public final void d() {
        bn0 bn0VarA = this.d.a();
        if (bn0VarA == null || bn0VarA.b() == null) {
            return;
        }
        this.e.f();
    }

    public final void a() {
        this.e.b();
        this.a.b();
        this.d.b();
    }

    public final void a(t70 t70Var) {
        y45.j(t70Var, "instreamAdView");
        st0 st0VarA = this.c.a(t70Var);
        if (!y45.e(this, st0VarA)) {
            if (st0VarA != null) {
                st0VarA.e.c();
                st0VarA.d.b();
            }
            if (this.c.a(this)) {
                this.e.c();
                this.d.b();
            }
            this.c.a(t70Var, this);
        }
        this.d.a(t70Var, defpackage.y71.k());
        this.a.a();
        this.e.g();
    }

    public final void a(nb2 nb2Var) {
        this.e.a(nb2Var);
    }
}
