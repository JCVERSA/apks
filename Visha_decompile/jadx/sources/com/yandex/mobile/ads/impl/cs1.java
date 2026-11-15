package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class cs1 implements td0<bs1> {
    private final Context a;

    public cs1(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    @Override
    public final zd0 a(o8 o8Var, o3 o3Var, cd0 cd0Var) {
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(cd0Var, "fullScreenController");
        Context context = this.a;
        um1 um1Var = new um1();
        return new bs1(context, o8Var, o3Var, cd0Var, um1Var, new os1(um1Var), new sg0(), new vc0(), new xt1(o3Var));
    }
}
