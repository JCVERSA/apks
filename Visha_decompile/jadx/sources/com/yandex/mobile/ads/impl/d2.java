package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class d2 {
    private static final long b = TimeUnit.DAYS.toMillis(1);
    private final Context a;

    public d2(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    public final boolean a(i2 i2Var) {
        Integer numB;
        y45.j(i2Var, "adBlockerState");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(this.a);
        if (ju1VarA != null && ju1VarA.a()) {
            return false;
        }
        if (!i2Var.d() || i2Var.c() != g2.c || System.currentTimeMillis() - i2Var.b() >= b) {
            if (i2Var.d()) {
                return false;
            }
            int iA = i2Var.a();
            ju1 ju1VarA2 = pw1.a.a().a(this.a);
            if (iA < ((ju1VarA2 == null || (numB = ju1VarA2.b()) == null) ? 5 : numB.intValue())) {
                return false;
            }
        }
        return true;
    }
}
