package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ds1 extends jd0<bs1> {
    private final sm1 F;
    private final xr1 G;

    public static final class a implements d5 {
        private final b5<ds1> a;
        private final ds1 b;

        public a(b5<ds1> b5Var, ds1 ds1Var) {
            y45.j(b5Var, "itemsFinishListener");
            y45.j(ds1Var, "loadController");
            this.a = b5Var;
            this.b = ds1Var;
        }

        @Override
        public final void a() {
            this.a.a(this.b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ds1(Context context, bv1 bv1Var, b5 b5Var, v7 v7Var, g5 g5Var, sg0 sg0Var, cs1 cs1Var, is1 is1Var, o3 o3Var, sm1 sm1Var, xr1 xr1Var) {
        super(context, o3Var, bv1Var, sm1Var, g5Var, cs1Var, sg0Var);
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(b5Var, "itemsLoadFinishListener");
        y45.j(v7Var, "adRequestData");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(sg0Var, "htmlAdResponseReportManager");
        y45.j(cs1Var, "contentControllerFactory");
        y45.j(is1Var, "adApiControllerFactory");
        y45.j(o3Var, "adConfiguration");
        y45.j(sm1Var, "proxyRewardedAdLoadListener");
        y45.j(xr1Var, "rewardDataValidator");
        this.F = sm1Var;
        this.G = xr1Var;
        o3Var.a(v7Var);
        sm1Var.a(new a(b5Var, this));
        sm1Var.a(o3Var);
        sm1Var.a(sg0Var);
    }

    @Override
    public final cd0<bs1> a(dd0 dd0Var) {
        y45.j(dd0Var, "controllerFactory");
        return dd0Var.b(this);
    }

    @Override
    public final void a(o8<String> o8Var) {
        y45.j(o8Var, "adResponse");
        ur1 ur1VarJ = o8Var.J();
        this.G.getClass();
        if (ur1VarJ != null && (!ur1VarJ.e() ? ur1VarJ.c() != null : ur1VarJ.d() != null)) {
            super.a(o8Var);
        } else {
            b(w7.k());
        }
    }

    public final void a(iu iuVar) {
        this.F.a(iuVar);
    }

    @Override
    public final void a(String str) {
        super.a(str);
        this.F.a(str);
    }
}
