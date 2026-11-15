package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class di {
    private final kx1 a;

    public di(kx1 kx1Var) {
        y45.j(kx1Var, "sensitiveModeChecker");
        this.a = kx1Var;
    }

    public final boolean a(Context context) {
        y45.j(context, "context");
        boolean zB = this.a.b(context);
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        return (zB || ju1VarA == null || !ju1VarA.X()) ? false : true;
    }
}
