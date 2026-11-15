package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Bundle;
import defpackage.y45;

public final class bs1 extends zd0<bs1> {
    private final um1 t;
    private final xt1 u;
    private final ns1 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bs1(Context context, o8<String> o8Var, o3 o3Var, cd0<bs1> cd0Var, um1 um1Var, os1 os1Var, sg0 sg0Var, vc0 vc0Var, xt1 xt1Var) {
        super(context, o8Var, o3Var, vc0Var, cd0Var, new w4());
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(cd0Var, "fullScreenController");
        y45.j(um1Var, "proxyRewardedListener");
        y45.j(os1Var, "rewardedExecutorProvider");
        y45.j(sg0Var, "htmlAdResponseReportManager");
        y45.j(vc0Var, "fullScreenAdVisibilityValidator");
        y45.j(xt1Var, "sdkAdapterReporter");
        this.t = um1Var;
        this.u = xt1Var;
        this.v = os1Var.a(context, o8Var, o3Var);
        sg0Var.a(o8Var);
        sg0Var.a(o3Var);
    }

    @Override
    public final void a(int i, Bundle bundle) {
        if (i == 13) {
            r();
        } else {
            super.a(i, bundle);
        }
    }

    @Override
    public final zd0 o() {
        return this;
    }

    public final void r() {
        this.u.b(e(), d());
        ns1 ns1Var = this.v;
        if (ns1Var != null) {
            ns1Var.a();
        }
    }

    public final void a(tm1 tm1Var) {
        y45.j(tm1Var, "listener");
        a((nd0) tm1Var);
        this.t.a(tm1Var);
    }
}
