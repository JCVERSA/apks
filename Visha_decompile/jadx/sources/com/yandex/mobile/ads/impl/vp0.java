package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class vp0 implements td0<up0> {
    private final Context a;

    public vp0(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    @Override
    public final zd0 a(o8 o8Var, o3 o3Var, cd0 cd0Var) {
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(cd0Var, "fullScreenController");
        return new up0(this.a, o8Var, o3Var, new vc0(), new sg0(), cd0Var);
    }
}
