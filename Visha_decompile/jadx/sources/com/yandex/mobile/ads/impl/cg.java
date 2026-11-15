package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class cg {
    private final md0 a;
    private final Context b;

    public cg(Context context, md0 md0Var) {
        y45.j(context, "context");
        this.a = md0Var;
        this.b = context.getApplicationContext();
    }

    public final bg a(uf ufVar) {
        y45.j(ufVar, "appOpenAdContentController");
        Context context = this.b;
        y45.i(context, "appContext");
        return new bg(context, ufVar, new pm1(this.a), new lt0(context), new ht0());
    }
}
