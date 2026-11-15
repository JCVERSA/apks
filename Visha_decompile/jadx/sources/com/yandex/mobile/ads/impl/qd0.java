package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.util.TypedValue;
import defpackage.s86;
import defpackage.y45;

public final class qd0 {
    private final o10 a = new o10();

    public final pd0 a(Context context, o8<String> o8Var, o3 o3Var) throws tj2 {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        Context applicationContext = context.getApplicationContext();
        try {
            y45.g(applicationContext);
            pd0 pd0Var = new pd0(applicationContext, o8Var, o3Var);
            pd0Var.setId(2);
            o10 o10Var = this.a;
            float fR = o8Var.r();
            o10Var.getClass();
            y45.j(applicationContext, "context");
            int iC = s86.c(TypedValue.applyDimension(1, fR, applicationContext.getResources().getDisplayMetrics()));
            o10 o10Var2 = this.a;
            float fC = o8Var.c();
            o10Var2.getClass();
            y45.j(applicationContext, "context");
            int iC2 = s86.c(TypedValue.applyDimension(1, fC, applicationContext.getResources().getDisplayMetrics()));
            if (iC > 0 && iC2 > 0) {
                pd0Var.layout(0, 0, iC, iC2);
            }
            return pd0Var;
        } catch (Throwable unused) {
            throw new tj2();
        }
    }
}
