package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class vl0 {
    private final bv1 a;
    private final fc2 b;

    public vl0(bv1 bv1Var, fc2 fc2Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(fc2Var, "videoAdLoader");
        this.a = bv1Var;
        this.b = fc2Var;
    }

    public final void a(Context context, p2 p2Var, dq1 dq1Var) {
        y45.j(context, "context");
        y45.j(p2Var, "adBreak");
        y45.j(dq1Var, "requestListener");
        bv1 bv1Var = this.a;
        ea2 ea2Var = new ea2(context, bv1Var, p2Var, dq1Var, new ho0(context, bv1Var));
        ha2 ha2Var = new ha2(new ha2.a(p2Var).c(), 0);
        this.b.a(ha2Var, new fo0(ha2Var), ea2Var);
    }
}
