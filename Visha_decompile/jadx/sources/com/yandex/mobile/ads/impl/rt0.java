package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class rt0 {
    private final bv1 a;
    private final Context b;
    private final z2 c;

    public rt0(Context context, en2 en2Var, et etVar) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(etVar, "instreamVideoAd");
        this.a = en2Var;
        this.b = context.getApplicationContext();
        this.c = new z2(etVar.a());
    }

    public final qt0 a(gt gtVar) {
        y45.j(gtVar, "coreInstreamAdBreak");
        Context context = this.b;
        y45.i(context, "context");
        bv1 bv1Var = this.a;
        z2 z2Var = this.c;
        am0 am0Var = new am0();
        mm0 mm0Var = new mm0();
        xt0 xt0Var = new xt0();
        return new qt0(context, bv1Var, gtVar, z2Var, am0Var, mm0Var, xt0Var, new nb2(), new tt0(context, bv1Var, gtVar, z2Var, xt0Var, am0Var));
    }
}
