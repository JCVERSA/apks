package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.v6a;
import defpackage.y45;

public final class h61 {
    public static g61 a(Context context, bv1 bv1Var, u61 u61Var, o3 o3Var, p61 p61Var, g5 g5Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(u61Var, "requestData");
        y45.j(o3Var, "adConfiguration");
        y45.j(p61Var, "nativeAdOnLoadListener");
        y45.j(g5Var, "adLoadingPhasesManager");
        defpackage.nk1 nk1VarA = kotlinx.coroutines.d.a(v6a.b(null, 1, null).plus(qu.a()));
        a71 a71Var = new a71(bv1Var, o3Var);
        d71 d71Var = new d71(o3Var);
        int i = j32.d;
        return new g61(context, bv1Var, u61Var, o3Var, p61Var, g5Var, nk1VarA, a71Var, d71Var, j32.a.a(), new i51(context, bv1Var, o3Var, g5Var, nk1VarA));
    }
}
