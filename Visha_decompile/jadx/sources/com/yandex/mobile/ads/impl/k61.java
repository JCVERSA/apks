package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class k61 implements j61 {
    private final l61 a;
    private final g61 b;

    public k61(Context context, bv1 bv1Var, u61 u61Var, l61 l61Var) {
        this(context, bv1Var, u61Var, l61Var, new g5(), new o3(ts.g, bv1Var), new f61(), new h61());
    }

    @Override
    public final void a() {
        this.a.a(this);
    }

    public final void b() {
        this.b.y();
    }

    public final void c() {
        this.b.z();
    }

    public final void a(vt vtVar) {
        this.b.a(vtVar);
    }

    public final void a(bu buVar) {
        this.b.a(buVar);
    }

    public final void a(ku kuVar) {
        this.b.a(kuVar);
    }

    public k61(Context context, bv1 bv1Var, u61 u61Var, l61 l61Var, g5 g5Var, o3 o3Var, f61 f61Var, h61 h61Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(u61Var, "requestData");
        y45.j(l61Var, "nativeAdLoadingItemFinishedListener");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(o3Var, "adConfiguration");
        y45.j(f61Var, "nativeAdLoadListenerFactory");
        y45.j(h61Var, "nativeAdLoadManagerFactory");
        this.a = l61Var;
        f61Var.getClass();
        p61 p61VarA = f61.a(context, o3Var, g5Var, this);
        h61Var.getClass();
        g61 g61VarA = h61.a(context, bv1Var, u61Var, o3Var, p61VarA, g5Var);
        this.b = g61VarA;
        p61VarA.a(g61VarA.f());
    }
}
