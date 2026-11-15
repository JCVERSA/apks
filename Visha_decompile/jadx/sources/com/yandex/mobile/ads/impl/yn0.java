package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class yn0 {
    private final bv1 a;
    private final gt b;
    private final zb2<go0> c;
    private final Context d;

    public yn0(Context context, bv1 bv1Var, gt gtVar, zb2<go0> zb2Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(gtVar, "coreInstreamAdBreak");
        y45.j(zb2Var, "videoAdInfo");
        this.a = bv1Var;
        this.b = gtVar;
        this.c = zb2Var;
        this.d = context.getApplicationContext();
    }

    public final ff1 a() {
        this.b.c();
        uu uuVarB = this.c.b();
        Context context = this.d;
        y45.i(context, "context");
        bv1 bv1Var = this.a;
        vn0 vn0Var = new vn0(context, bv1Var, uuVarB, new o3(ts.h, bv1Var));
        Context context2 = this.d;
        y45.i(context2, "context");
        return new on0(context2, vn0Var, new y82(new x82()));
    }
}
