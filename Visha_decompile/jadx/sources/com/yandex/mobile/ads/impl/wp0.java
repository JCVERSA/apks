package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class wp0 extends jd0<up0> {
    private final qm1 F;

    public static final class a implements d5 {
        private final b5<wp0> a;
        private final wp0 b;

        public a(b5<wp0> b5Var, wp0 wp0Var) {
            y45.j(b5Var, "itemsFinishListener");
            y45.j(wp0Var, "loadController");
            this.a = b5Var;
            this.b = wp0Var;
        }

        @Override
        public final void a() {
            this.a.a(this.b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wp0(Context context, bv1 bv1Var, b5 b5Var, v7 v7Var, g5 g5Var, sg0 sg0Var, vp0 vp0Var, bq0 bq0Var, o3 o3Var, qm1 qm1Var) {
        super(context, o3Var, bv1Var, qm1Var, g5Var, vp0Var, sg0Var);
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(b5Var, "itemsLoadFinishListener");
        y45.j(v7Var, "adRequestData");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(sg0Var, "htmlAdResponseReportManager");
        y45.j(vp0Var, "contentControllerFactory");
        y45.j(bq0Var, "adApiControllerFactory");
        y45.j(o3Var, "adConfiguration");
        y45.j(qm1Var, "proxyInterstitialAdLoadListener");
        this.F = qm1Var;
        o3Var.a(v7Var);
        qm1Var.a(new a(b5Var, this));
        qm1Var.a(o3Var);
        qm1Var.a(sg0Var);
    }

    @Override
    public final cd0<up0> a(dd0 dd0Var) {
        y45.j(dd0Var, "controllerFactory");
        return dd0Var.a(this);
    }

    public final void a(pt ptVar) {
        this.F.a(ptVar);
    }

    @Override
    public final void a(String str) {
        super.a(str);
        this.F.a(str);
    }
}
