package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class kx1 {
    private final tr a;

    public kx1() {
        this(new tr());
    }

    public static boolean a(Context context) {
        y45.j(context, "context");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        return ju1VarA != null && ju1VarA.f0();
    }

    public final boolean b(Context context) {
        y45.j(context, "context");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        if (ju1VarA != null && ju1VarA.x0() && !a(context)) {
            this.a.getClass();
            y45.j(ju1VarA, "sdkConfiguration");
            if (y45.e(pw1.a.a().f(), ju1VarA.U()) || !y45.e(pw1.a.a().f(), Boolean.TRUE)) {
                return false;
            }
        }
        return true;
    }

    public kx1(tr trVar) {
        y45.j(trVar, "consentUpdateValidator");
        this.a = trVar;
    }
}
