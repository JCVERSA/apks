package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class tt0 {
    private final bv1 a;
    private final gt b;
    private final z2 c;
    private final xt0 d;
    private final am0 e;
    private final Context f;

    public tt0(Context context, bv1 bv1Var, gt gtVar, z2 z2Var, xt0 xt0Var, am0 am0Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(gtVar, "instreamAdBreak");
        y45.j(z2Var, "adBreakStatusController");
        y45.j(xt0Var, "manualPlaybackEventListener");
        y45.j(am0Var, "instreamAdCustomUiElementsHolder");
        this.a = bv1Var;
        this.b = gtVar;
        this.c = z2Var;
        this.d = xt0Var;
        this.e = am0Var;
        this.f = context.getApplicationContext();
    }

    public final st0 a(hm2 hm2Var) {
        y45.j(hm2Var, "instreamAdPlayer");
        jm0 jm0Var = new jm0(hm2Var);
        Context context = this.f;
        y45.i(context, "context");
        bv1 bv1Var = this.a;
        gt gtVar = this.b;
        z2 z2Var = this.c;
        xt0 xt0Var = this.d;
        am0 am0Var = this.e;
        int i = yt0.d;
        yt0 yt0VarA = yt0.a.a();
        cn0 cn0Var = new cn0();
        return new st0(context, bv1Var, gtVar, jm0Var, z2Var, xt0Var, am0Var, yt0VarA, cn0Var, new u2(context, gtVar, jm0Var, new ym0(context, bv1Var, cn0Var, new zt0(jm0Var, gtVar), jm0Var, am0Var), cn0Var, z2Var));
    }
}
