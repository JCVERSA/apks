package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.ye;
import defpackage.y45;
import java.util.concurrent.Executor;

public final class ye {
    private final Executor a;
    private final ue b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ye() {
        this(ms0.a.a().c(), ve.a());
        int i = ms0.f;
    }

    public final void a(final xe xeVar) {
        y45.j(xeVar, "listener");
        this.a.execute(new Runnable() {
            @Override
            public final void run() {
                ye.a(this.b, xeVar);
            }
        });
    }

    public static final void a(ye yeVar, xe xeVar) {
        y45.j(yeVar, "this$0");
        y45.j(xeVar, "$listener");
        try {
            yeVar.b.a(xeVar);
        } catch (Throwable th) {
            xeVar.a(th.getMessage());
        }
    }

    public ye(Executor executor, ue ueVar) {
        y45.j(executor, "executor");
        y45.j(ueVar, "appMetricaAdapter");
        this.a = executor;
        this.b = ueVar;
    }
}
