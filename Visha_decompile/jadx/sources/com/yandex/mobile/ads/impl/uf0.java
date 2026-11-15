package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import defpackage.y45;

public final class uf0 implements qc {
    private final it1 a;
    private final Context b;
    private final wf0 c;
    private final xf0 d;

    public uf0(Context context) {
        this(context, new it1());
    }

    @Override
    public final lc a() {
        ResolveInfo resolveInfoResolveService;
        this.d.getClass();
        Intent intentA = xf0.a();
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
                com.monetization.ads.core.identifiers.ad.huawei.a aVar = new com.monetization.ads.core.identifiers.ad.huawei.a();
                if (this.b.bindService(intentA, aVar, 1)) {
                    lc lcVarA = this.c.a(aVar);
                    this.b.unbindService(aVar);
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

    public uf0(Context context, it1 it1Var) {
        y45.j(context, "context");
        y45.j(it1Var, "safePackageManager");
        this.a = it1Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.b = applicationContext;
        this.c = new wf0();
        this.d = new xf0();
    }
}
