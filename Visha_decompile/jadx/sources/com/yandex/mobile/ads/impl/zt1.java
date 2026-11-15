package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class zt1 implements ej {
    private final aj a;
    private final jv1<bu1> b;
    private final xt1 c;
    private o8<String> d;

    public static final class a implements kv1<bu1> {
        private final aj a;

        public a(aj ajVar) {
            y45.j(ajVar, "adViewController");
            this.a = ajVar;
        }

        @Override
        public final void a(bu1 bu1Var) {
            bu1 bu1Var2 = bu1Var;
            y45.j(bu1Var2, "ad");
            bu1Var2.a(new yt1(this));
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adFetchRequestError");
            this.a.b(w3Var);
        }
    }

    public zt1(aj ajVar, bv1 bv1Var, o3 o3Var, cj cjVar, cu1 cu1Var, jv1<bu1> jv1Var, xt1 xt1Var) {
        y45.j(ajVar, "adLoadController");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        y45.j(cjVar, "bannerAdSizeValidator");
        y45.j(cu1Var, "sdkBannerHtmlAdCreator");
        y45.j(jv1Var, "adCreationHandler");
        y45.j(xt1Var, "sdkAdapterReporter");
        this.a = ajVar;
        this.b = jv1Var;
        this.c = xt1Var;
    }

    @Override
    public final void a(Context context) {
        y45.j(context, "context");
        sp0.d(new Object[0]);
        this.b.a();
        this.d = null;
    }

    @Override
    public final String getAdInfo() {
        o8<String> o8Var = this.d;
        if (o8Var != null) {
            return o8Var.e();
        }
        return null;
    }

    @Override
    public final void a(Context context, o8<String> o8Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        this.d = o8Var;
        g5 g5VarI = this.a.i();
        f5 f5Var = f5.c;
        bk.a(g5VarI, f5Var, "adLoadingPhaseType", f5Var, null);
        this.c.a(context, o8Var, (t71) null);
        this.c.a(context, o8Var);
        this.b.a(context, o8Var, new a(this.a));
    }
}
