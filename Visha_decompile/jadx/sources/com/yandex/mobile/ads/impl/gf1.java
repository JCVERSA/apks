package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class gf1 {
    private final ps0 a;

    public gf1(Context context) {
        this(context, rs0.a(context));
    }

    public final boolean a() {
        return this.a.a("OPT_OUT_ENABLED", false);
    }

    public final void b() {
        this.a.b("OPT_OUT_ENABLED", true);
    }

    public gf1(Context context, ps0 ps0Var) {
        y45.j(context, "context");
        y45.j(ps0Var, "localStorage");
        this.a = ps0Var;
    }
}
