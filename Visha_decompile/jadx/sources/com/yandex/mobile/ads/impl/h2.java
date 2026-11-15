package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class h2 {
    private final d2 a;
    private final k2 b;
    private final j2 c;

    public h2(Context context) {
        this(context, new d2(context), new k2(context), new j2(context));
    }

    public final g2 a() {
        i2 i2VarA = this.b.a();
        if (this.c.a(i2VarA)) {
            return this.a.a(i2VarA) ? g2.c : g2.b;
        }
        return null;
    }

    public h2(Context context, d2 d2Var, k2 k2Var, j2 j2Var) {
        y45.j(context, "context");
        y45.j(d2Var, "adBlockerDetectorHttpUsageChecker");
        y45.j(k2Var, "adBlockerStateProvider");
        y45.j(j2Var, "adBlockerStateExpiredValidator");
        this.a = d2Var;
        this.b = k2Var;
        this.c = j2Var;
    }
}
