package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class q11 {
    public static final int a = 0;

    static {
        new q11();
    }

    private q11() {
    }

    public static final void a(boolean z) {
        sp0.a(z);
        hp0.a(z);
        if (z) {
            return;
        }
        int i = v11.d;
        v11.a.a().c();
        int i2 = n11.d;
        n11.a.a().c();
    }

    public static final void b(boolean z) {
        int i = pw1.l;
        pw1.a.a().c(z);
    }

    public static final void a(Context context, bv1 bv1Var, dt dtVar) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(dtVar, "initializationListener");
        if (new ki().a()) {
            return;
        }
        int i = g82.c;
        g82.a(context, bv1Var.c());
        de.a(context, bv1Var.c());
        new uj2(new ll1()).a();
        new lt0(context).a();
        int i2 = g11.h;
        g11.a.a(bv1Var).a(context, dtVar);
    }
}
