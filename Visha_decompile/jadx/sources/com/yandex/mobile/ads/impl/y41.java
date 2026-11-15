package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class y41 {
    private final o3 a;
    private final o8<?> b;
    private final Context c;
    private x71 d;

    /* JADX WARN: Illegal instructions before constructor call */
    public y41(Context context, o3 o3Var, o8 o8Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, o3Var, o8Var, applicationContext);
    }

    public final ep a(String str, String str2) {
        y45.j(str, "assetName");
        y45.j(str2, "clickType");
        return new ep(this.c, this.b, this.a, new z41(str, str2, this.d));
    }

    public y41(Context context, o3 o3Var, o8<?> o8Var, Context context2) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(context2, "appContext");
        this.a = o3Var;
        this.b = o8Var;
        this.c = context2;
    }

    public final void a(x71 x71Var) {
        this.d = x71Var;
    }
}
