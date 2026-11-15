package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class iz1 {
    public static final boolean a(Context context, o8<?> o8Var, gz1 gz1Var, j9 j9Var, gz1 gz1Var2) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(gz1Var, "responseSizeInfo");
        y45.j(j9Var, "adSizeValidator");
        y45.j(gz1Var2, "containerSizeInfo");
        boolean zA = j9Var.a(context, gz1Var);
        boolean zN = o8Var.N();
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        return zN || (zA && qa.a(applicationContext, gz1Var, gz1Var2));
    }
}
