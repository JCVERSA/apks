package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.hl0;
import defpackage.y45;

public final class hl0 {
    private final b11 a;
    private final dt b;

    public hl0(b11 b11Var, dt dtVar) {
        y45.j(b11Var, "mobileAdsExecutor");
        y45.j(dtVar, "initializationListener");
        this.a = b11Var;
        this.b = dtVar;
    }

    public final void a() {
        this.a.b(new Runnable() {
            @Override
            public final void run() {
                hl0.a(this.b);
            }
        });
    }

    public static final void a(hl0 hl0Var) {
        y45.j(hl0Var, "this$0");
        hl0Var.b.onInitializationCompleted();
    }
}
