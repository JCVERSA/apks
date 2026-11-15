package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class lf1 {
    private final o8<?> a;
    private final j1 b;
    private final Context c;

    public lf1(Context context, o8 o8Var, v1 v1Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(v1Var, "adActivityListener");
        this.a = o8Var;
        this.b = v1Var;
        this.c = context.getApplicationContext();
    }

    public final void a() {
        if (this.a.S()) {
            return;
        }
        gz1 gz1VarM = this.a.M();
        Context context = this.c;
        y45.i(context, "context");
        new mb0(context, gz1VarM, this.b).a();
    }
}
