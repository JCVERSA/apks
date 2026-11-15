package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class t80 {
    private final m80 a;
    private final v9 b;

    public t80(Context context, o3 o3Var, m80 m80Var) {
        this(context, o3Var, m80Var, new v9(context, o3Var));
    }

    public final void a(long j) {
        if (j <= this.a.c()) {
            this.b.a(this.a.d(), z62.e);
        }
    }

    public t80(Context context, o3 o3Var, m80 m80Var, v9 v9Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(m80Var, "falseClick");
        y45.j(v9Var, "adTracker");
        this.a = m80Var;
        this.b = v9Var;
    }
}
