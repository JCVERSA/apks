package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class qx1 implements ns1 {
    private final rx1 a;
    private final v9 b;

    public qx1(Context context, o3 o3Var, rx1 rx1Var, v9 v9Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(rx1Var, "serverSideReward");
        y45.j(v9Var, "adTracker");
        this.a = rx1Var;
        this.b = v9Var;
    }

    @Override
    public final void a() {
        this.b.a(this.a.c(), z62.j);
    }
}
