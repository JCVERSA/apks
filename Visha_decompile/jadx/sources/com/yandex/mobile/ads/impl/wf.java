package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class wf extends jd0<uf> {
    private final om1 F;

    public static final class a implements d5 {
        private final b5<wf> a;
        private final wf b;

        public a(b5<wf> b5Var, wf wfVar) {
            y45.j(b5Var, "itemsFinishListener");
            y45.j(wfVar, "loadController");
            this.a = b5Var;
            this.b = wfVar;
        }

        @Override
        public final void a() {
            this.a.a(this.b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wf(Context context, bv1 bv1Var, b5 b5Var, v7 v7Var, g5 g5Var, sg0 sg0Var, vf vfVar, o3 o3Var, om1 om1Var) {
        super(context, o3Var, bv1Var, om1Var, g5Var, vfVar, sg0Var);
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(b5Var, "itemsLoadFinishListener");
        y45.j(v7Var, "adRequestData");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(sg0Var, "htmlAdResponseReportManager");
        y45.j(vfVar, "adContentControllerFactory");
        y45.j(o3Var, "adConfiguration");
        y45.j(om1Var, "proxyAppOpenAdLoadListener");
        this.F = om1Var;
        o3Var.a(v7Var);
        om1Var.a(new a(b5Var, this));
        om1Var.a(sg0Var);
        om1Var.a(o3Var);
    }

    @Override
    public final cd0<uf> a(dd0 dd0Var) {
        y45.j(dd0Var, "controllerFactory");
        return dd0Var.c(this);
    }

    public final void a(ws wsVar) {
        this.F.a(wsVar);
    }
}
