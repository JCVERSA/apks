package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import defpackage.y45;

public final class ze0 {
    private final it1 a;
    private final Context b;
    private final af0 c;
    private final bf0 d;

    public ze0(Context context) {
        this(context, new it1());
    }

    public final lc a() {
        ResolveInfo resolveInfoResolveService;
        this.d.getClass();
        Intent intentA = bf0.a();
        it1 it1Var = this.a;
        Context context = this.b;
        it1Var.getClass();
        y45.j(context, "context");
        y45.j(intentA, "intent");
        lc lcVar = null;
        try {
            resolveInfoResolveService = context.getPackageManager().resolveService(intentA, 0);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            resolveInfoResolveService = null;
        }
        if (resolveInfoResolveService != null) {
            try {
                we0 we0Var = new we0();
                if (this.b.bindService(intentA, we0Var, 1)) {
                    lc lcVarA = this.c.a(we0Var);
                    this.b.unbindService(we0Var);
                    lcVar = lcVarA;
                } else {
                    sp0.a(new Object[0]);
                }
            } catch (Throwable unused2) {
                sp0.c(new Object[0]);
            }
        }
        return lcVar;
    }

    public ze0(Context context, it1 it1Var) {
        y45.j(context, "context");
        y45.j(it1Var, "safePackageManager");
        this.a = it1Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.b = applicationContext;
        this.c = new af0();
        this.d = new bf0();
    }
}
