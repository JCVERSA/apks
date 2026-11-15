package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class mb0 {
    private final gz1 a;
    private final j1 b;
    private final Context c;

    public mb0(Context context, gz1 gz1Var, j1 j1Var) {
        y45.j(context, "context");
        y45.j(gz1Var, "sizeInfo");
        y45.j(j1Var, "adActivityListener");
        this.a = gz1Var;
        this.b = j1Var;
        this.c = context.getApplicationContext();
    }

    public final void a() {
        int i;
        int i2 = this.c.getResources().getConfiguration().orientation;
        Context context = this.c;
        y45.i(context, "context");
        gz1 gz1Var = this.a;
        boolean zB = qa.b(context, gz1Var);
        boolean zA = qa.a(context, gz1Var);
        if (zB == zA) {
            i = -1;
        } else {
            i = (!zA ? 1 == i2 : 1 != i2) ? 6 : 7;
        }
        if (-1 != i) {
            this.b.a(i);
        }
    }
}
