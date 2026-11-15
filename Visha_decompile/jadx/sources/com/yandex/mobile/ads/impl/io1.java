package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class io1 {
    private final l10 a;
    private final Context b;

    public io1(Context context) {
        this(context, new l10());
    }

    public final fw0 a() {
        return k10.d == this.a.a(this.b) ? new fw0(1920, 1080, 6800) : new fw0(854, 480, 1000);
    }

    public io1(Context context, l10 l10Var) {
        y45.j(context, "context");
        y45.j(l10Var, "deviceTypeProvider");
        this.a = l10Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.b = applicationContext;
    }
}
