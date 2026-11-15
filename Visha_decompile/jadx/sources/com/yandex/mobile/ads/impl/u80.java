package com.yandex.mobile.ads.impl;

import android.os.SystemClock;
import com.yandex.mobile.ads.impl.u80;
import defpackage.c74;
import defpackage.y45;

public final class u80 {
    private final it0 a;

    public u80(it0 it0Var) {
        y45.j(it0Var, "mainThreadHandler");
        this.a = it0Var;
    }

    public final void a(final c74 c74Var) {
        y45.j(c74Var, "successCallback");
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.a.a(new Runnable() {
            @Override
            public final void run() {
                u80.a(jElapsedRealtime, c74Var);
            }
        });
    }

    public static final void a(long j, c74 c74Var) {
        y45.j(c74Var, "$successCallback");
        if (SystemClock.elapsedRealtime() - j <= 5000) {
            c74Var.invoke();
        }
    }
}
