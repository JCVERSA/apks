package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class gc1 implements yc0, jc1 {
    private final ic1 a;
    private final zp b;

    public gc1(ic1 ic1Var, zp zpVar) {
        y45.j(ic1Var, "nativeWebViewController");
        y45.j(zpVar, "closeShowListener");
        this.a = ic1Var;
        this.b = zpVar;
    }

    @Override
    public final void a() {
    }

    @Override
    public final void invalidate() {
        this.a.b(this);
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
    public final void a(boolean z) {
        if (z) {
            return;
        }
        this.b.a();
        this.a.b(this);
    }
}
