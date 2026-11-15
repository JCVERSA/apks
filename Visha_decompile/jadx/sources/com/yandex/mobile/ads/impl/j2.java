package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class j2 {
    private final o2 a;

    public j2(Context context) {
        this(context, new o2(context));
    }

    public final boolean a(i2 i2Var) {
        y45.j(i2Var, "adBlockerState");
        return i2Var.b() + this.a.a() < System.currentTimeMillis();
    }

    public j2(Context context, o2 o2Var) {
        y45.j(context, "context");
        y45.j(o2Var, "adBlockerStatusValidityDurationProvider");
        this.a = o2Var;
    }
}
