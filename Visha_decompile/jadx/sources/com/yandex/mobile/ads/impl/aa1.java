package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class aa1 {
    private final c71 a;

    public aa1(Context context, sp1 sp1Var) {
        this(context, sp1Var, new c71(context, sp1Var));
    }

    public final y61 a(o8<String> o8Var) {
        y45.j(o8Var, "adResponse");
        String strI = o8Var.I();
        if (strI == null || strI.length() == 0) {
            return null;
        }
        return this.a.a(strI, new vj(o8Var, o8Var.C(), o8Var.y()));
    }

    public aa1(Context context, sp1 sp1Var, c71 c71Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(c71Var, "nativeAdResponseParser");
        this.a = c71Var;
    }
}
