package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class gm0 implements tm0 {
    private final hm0 a;
    private final j32 b;
    private final g5 c;
    private final um0 d;
    private final fc2 e;
    private final sm0 f;

    public gm0(Context context, bv1 bv1Var, hm0 hm0Var, j32 j32Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(hm0Var, "itemFinishedListener");
        y45.j(j32Var, "strongReferenceKeepingManager");
        this.a = hm0Var;
        this.b = j32Var;
        g5 g5Var = new g5();
        this.c = g5Var;
        o3 o3Var = new o3(ts.h, bv1Var);
        um0 um0Var = new um0(context, o3Var, g5Var, this);
        this.d = um0Var;
        fc2 fc2Var = new fc2(context, o3Var, g5Var);
        this.e = fc2Var;
        this.f = new sm0(context, bv1Var, fc2Var, um0Var);
    }

    public final void a(oi2 oi2Var) {
        y45.j(oi2Var, "requestConfig");
        this.b.b(xq0.b, this);
        this.d.a(oi2Var);
        g5 g5Var = this.c;
        f5 f5Var = f5.e;
        bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
        this.e.a(oi2Var, this.f);
    }

    @Override
    public final void a() {
        this.a.a(this);
        this.b.a(xq0.b, this);
    }

    public final void a(jt jtVar) {
        this.d.a(jtVar);
    }
}
