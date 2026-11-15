package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.y45;

public final class bt0 {
    private final String a;
    private final jo1 b;
    private final Context c;

    public bt0(Context context, String str) {
        this(context, str, new jo1());
    }

    public final he0 a() {
        Class<?> cls;
        jo1 jo1Var = this.b;
        String str = this.a;
        jo1Var.getClass();
        y45.j(str, TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
        try {
            cls = Class.forName(str);
        } catch (Throwable unused) {
            sp0.c(str);
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        jo1 jo1Var2 = this.b;
        Object[] objArr = {this.c};
        jo1Var2.getClass();
        Object objA = jo1.a(cls, "getFusedLocationProviderClient", objArr);
        if (objA != null) {
            return new he0(objA);
        }
        return null;
    }

    public bt0(Context context, String str, jo1 jo1Var) {
        y45.j(context, "context");
        y45.j(str, "locationServicesClassName");
        y45.j(jo1Var, "reflectHelper");
        this.a = str;
        this.b = jo1Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.c = applicationContext;
    }
}
