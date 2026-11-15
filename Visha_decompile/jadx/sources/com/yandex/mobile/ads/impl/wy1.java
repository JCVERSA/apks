package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class wy1 implements x8 {
    private final u2 a;
    private y8 b;

    public final class a implements v2 {
        public a() {
        }

        @Override
        public final void a() {
            y8 y8Var = wy1.this.b;
            if (y8Var != null) {
                y8Var.b();
            }
        }

        @Override
        public final void b() {
        }

        @Override
        public final void d() {
        }

        @Override
        public final void e() {
            y8 y8Var = wy1.this.b;
            if (y8Var != null) {
                y8Var.c();
            }
        }

        @Override
        public final void g() {
            y8 y8Var = wy1.this.b;
            if (y8Var != null) {
                y8Var.a();
            }
        }
    }

    public wy1(Context context, gt gtVar, jm0 jm0Var, ym0 ym0Var, cn0 cn0Var, z2 z2Var, u2 u2Var) {
        y45.j(context, "context");
        y45.j(gtVar, "adBreak");
        y45.j(jm0Var, "instreamAdPlayerController");
        y45.j(ym0Var, "interfaceElementsManager");
        y45.j(cn0Var, "instreamAdViewsHolderManager");
        y45.j(z2Var, "adBreakStatusController");
        y45.j(u2Var, "adBreakPlaybackController");
        this.a = u2Var;
        u2Var.a(new a());
    }

    @Override
    public final void c() {
        this.a.b();
    }

    @Override
    public final void f() {
        this.a.c();
    }

    @Override
    public final void prepare() {
        this.a.d();
    }

    @Override
    public final void resume() {
        this.a.f();
    }

    @Override
    public final void start() {
        this.a.g();
    }

    @Override
    public final void a(lo0 lo0Var) {
        this.a.a(lo0Var);
    }

    @Override
    public final void a(y8 y8Var) {
        this.b = y8Var;
    }
}
