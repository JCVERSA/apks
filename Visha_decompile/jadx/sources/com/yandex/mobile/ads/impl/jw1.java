package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.af5;
import defpackage.y45;

public final class jw1 implements l81 {
    static final af5[] f = {ta.a(jw1.class, "nativeAdLoadManager", "getNativeAdLoadManager()Lcom/monetization/ads/nativeads/NativeAdLoadManager;", 0)};
    private final o3 a;
    private final gw1 b;
    private final go1 c;
    private final xt1 d;
    private final t71 e;

    public jw1(bv1 bv1Var, g61 g61Var, o3 o3Var, gw1 gw1Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(g61Var, "nativeAdLoadManager");
        y45.j(o3Var, "adConfiguration");
        y45.j(gw1Var, "sdkNativeAdFactoriesProviderCreator");
        this.a = o3Var;
        this.b = gw1Var;
        this.c = ho1.a(g61Var);
        this.d = new xt1(g61Var.f());
        this.e = new t71(g61Var.f());
    }

    @Override
    public final void a(Context context, o8<y61> o8Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        g61 g61Var = (g61) this.c.getValue(this, f[0]);
        if (g61Var != null) {
            g5 g5VarI = g61Var.i();
            f5 f5Var = f5.c;
            g5VarI.getClass();
            y45.j(f5Var, "adLoadingPhaseType");
            g5VarI.a(f5Var, null);
            u71 u71Var = new u71(o8Var, o8Var.I(), this.a);
            this.d.a(context, o8Var, this.e);
            this.d.a(context, o8Var, u71Var);
            g61Var.a(o8Var, this.b.a(o8Var));
        }
    }
}
