package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class hc1 implements yc0, jc1 {
    private final ic1 a;
    private k3 b;

    public hc1(ic1 ic1Var, k3 k3Var) {
        y45.j(ic1Var, "nativeWebViewController");
        y45.j(k3Var, "adCompleteListener");
        this.a = ic1Var;
        this.b = k3Var;
    }

    @Override
    public final void a(boolean z) {
    }

    @Override
    public final void invalidate() {
        this.a.b(this);
        this.b = null;
    }

    @Override
    public final void pause() {
    }

    @Override
    public final void resume() {
    }

    @Override
    public final void start() {
        this.a.a(this);
    }

    @Override
    public final void a() {
        k3 k3Var = this.b;
        if (k3Var != null) {
            k3Var.b();
        }
        this.a.b(this);
        this.b = null;
    }
}
