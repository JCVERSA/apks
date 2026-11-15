package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class bq0 {
    private final rm1 a;
    private final Context b;

    public bq0(Context context, md0 md0Var) {
        this(context, new rm1(md0Var));
    }

    public final aq0 a(up0 up0Var) {
        y45.j(up0Var, "contentController");
        Context context = this.b;
        y45.i(context, "appContext");
        return new aq0(context, up0Var, this.a, new lt0(context), new ht0());
    }

    public bq0(Context context, rm1 rm1Var) {
        y45.j(context, "context");
        y45.j(rm1Var, "proxyInterstitialAdShowListener");
        this.a = rm1Var;
        this.b = context.getApplicationContext();
    }
}
