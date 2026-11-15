package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class is1 {
    private final tm1 a;
    private final Context b;

    public is1(Context context, md0 md0Var) {
        this(context, new tm1(md0Var));
    }

    public final hs1 a(bs1 bs1Var) {
        y45.j(bs1Var, "contentController");
        Context context = this.b;
        y45.i(context, "appContext");
        return new hs1(context, bs1Var, this.a, new lt0(context), new ht0());
    }

    public is1(Context context, tm1 tm1Var) {
        y45.j(context, "context");
        y45.j(tm1Var, "proxyRewardedAdShowListener");
        this.a = tm1Var;
        this.b = context.getApplicationContext();
    }
}
