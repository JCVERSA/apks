package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import defpackage.y45;

public final class jg1 implements p82 {
    private final kg1 a;
    private final k50 b;

    public jg1(kg1 kg1Var) {
        y45.j(kg1Var, "passbackUrlParametersProvider");
        this.a = kg1Var;
        this.b = new k50();
    }

    @Override
    public final String a(Context context, o3 o3Var, kx1 kx1Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(kx1Var, "sensitiveModeChecker");
        return this.b.a(context, new fb0(fb0.b.a(context, o3Var, kx1Var).b(this.a.a()), 0).toString());
    }

    @Override
    public final String a(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(o3Var, "adConfiguration");
        String strA = o3Var.k().a();
        if (strA == null || strA.length() <= 0) {
            return null;
        }
        return Uri.parse(strA).buildUpon().appendEncodedPath("v4/ad").build().toString();
    }

    @Override
    public final p82.a a() {
        return p82.a.c;
    }
}
