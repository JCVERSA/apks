package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class zp0 {
    public static yp0 a(Context context, en2 en2Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        Context applicationContext = context.getApplicationContext();
        y45.g(applicationContext);
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(applicationContext);
        if (ju1VarA == null || !ju1VarA.h0()) {
            return new ok(applicationContext, en2Var, new lt0(applicationContext), new ht0(), new xp0(en2Var));
        }
        lt0 lt0Var = new lt0(applicationContext);
        ht0 ht0Var = new ht0();
        xp0 xp0Var = new xp0(en2Var);
        int i2 = fq0.e;
        return new ln(applicationContext, en2Var, lt0Var, ht0Var, xp0Var, fq0.a.a(), new wk1());
    }
}
