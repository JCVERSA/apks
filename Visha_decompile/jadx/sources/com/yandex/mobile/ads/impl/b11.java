package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class b11 {
    private final c11 a;

    public b11(c11 c11Var) {
        y45.j(c11Var, "mobileAdsExecutorProvider");
        this.a = c11Var;
    }

    public final void a(Runnable runnable) {
        y45.j(runnable, "runnable");
        this.a.a().execute(runnable);
    }

    public final void b(Runnable runnable) {
        y45.j(runnable, "runnable");
        this.a.b().execute(runnable);
    }
}
