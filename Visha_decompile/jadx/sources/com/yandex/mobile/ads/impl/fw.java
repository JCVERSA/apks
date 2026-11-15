package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class fw {
    private final ew a;

    public fw(Context context, o3 o3Var, pp1 pp1Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(pp1Var, "debugParams");
        o3Var.q().f();
        this.a = new ew(nd.a(context, jn2.a, o3Var.q().b()), pp1Var);
    }

    public final ew a() {
        return this.a;
    }
}
