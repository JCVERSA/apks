package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ba2 {
    private final o3 a;
    private final g5 b;

    public ba2(o3 o3Var, g5 g5Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        this.a = o3Var;
        this.b = g5Var;
    }

    public final aa2 a(Context context, ha2 ha2Var, ia2 ia2Var, dq1<z92> dq1Var) {
        y45.j(context, "context");
        y45.j(ha2Var, "configuration");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(dq1Var, "requestListener");
        x92 x92Var = new x92(ha2Var, new a8(ha2Var.a()));
        o3 o3Var = this.a;
        return new aa2(context, o3Var, ha2Var, ia2Var, this.b, x92Var, dq1Var, new yd2(context, o3Var, x92Var, ia2Var));
    }
}
