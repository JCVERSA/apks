package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.Intent;
import defpackage.y45;

public final class fm {
    private final sp1 a;
    private final em b;

    public fm(bv1 bv1Var) {
        this(bv1Var, bv1Var.c(), new em(bv1Var.e()));
    }

    public final boolean a(Context context, o8 o8Var, t8 t8Var, o3 o3Var, String str) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(t8Var, "adResultReceiver");
        y45.j(str, "browserUrl");
        int i = d1.d;
        d1 d1VarA = d1.a.a();
        long jA = wi0.a();
        Intent intentA = this.b.a(context, str, jA);
        d1VarA.a(jA, new c1(new c1.a(o8Var, o3Var, t8Var)));
        try {
            context.startActivity(intentA);
            return true;
        } catch (Exception e) {
            d1VarA.a(jA);
            e.toString();
            sp0.b(new Object[0]);
            this.a.reportError("Failed to show Browser", e);
            return false;
        }
    }

    public fm(bv1 bv1Var, sp1 sp1Var, em emVar) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(sp1Var, "reporter");
        y45.j(emVar, "intentCreator");
        this.a = sp1Var;
        this.b = emVar;
    }
}
