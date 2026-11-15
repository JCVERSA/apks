package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class gu1 {
    private final defpackage.nk1 a;
    private final Context b;
    private final g5 c;
    private final p50 d;
    private final jc e;
    private final wv1 f;
    private final j32 g;
    private final eu1 h;
    private final ef1 i;

    public gu1(Context context, en2 en2Var, defpackage.nk1 nk1Var, Context context2, g5 g5Var, p50 p50Var, jc jcVar, wv1 wv1Var, j32 j32Var, eu1 eu1Var, ef1 ef1Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(nk1Var, "coroutineScope");
        y45.j(context2, "appContext");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(p50Var, "environmentController");
        y45.j(jcVar, "advertisingConfiguration");
        y45.j(wv1Var, "sdkInitializerSuspendableWrapper");
        y45.j(j32Var, "strongReferenceKeepingManager");
        y45.j(eu1Var, "bidderTokenGenerator");
        y45.j(ef1Var, "resultReporter");
        this.a = nk1Var;
        this.b = context2;
        this.c = g5Var;
        this.d = p50Var;
        this.e = jcVar;
        this.f = wv1Var;
        this.g = j32Var;
        this.h = eu1Var;
        this.i = ef1Var;
    }

    public final void a(dl dlVar, ul2 ul2Var) {
        y45.j(ul2Var, "listener");
        defpackage.el0.d(this.a, null, null, new fu1(this, dlVar, ul2Var, null), 3, null);
    }
}
