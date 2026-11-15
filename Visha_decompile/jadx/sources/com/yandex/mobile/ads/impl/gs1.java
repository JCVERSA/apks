package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class gs1 {
    public static fs1 a(Context context, en2 en2Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        Context applicationContext = context.getApplicationContext();
        y45.g(applicationContext);
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(applicationContext);
        if (ju1VarA == null || !ju1VarA.w0()) {
            return new tk(applicationContext, en2Var, new lt0(applicationContext), new ht0(), new es1(en2Var));
        }
        lt0 lt0Var = new lt0(applicationContext);
        ht0 ht0Var = new ht0();
        es1 es1Var = new es1(en2Var);
        int i2 = rs1.e;
        return new mn(applicationContext, en2Var, lt0Var, ht0Var, es1Var, rs1.a.a(), new wk1());
    }
}
