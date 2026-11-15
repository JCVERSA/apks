package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class h00 {
    private final Context a;
    private final o3 b;
    private final o8<?> c;

    public h00(Context context, o8 o8Var, o3 o3Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        this.a = context;
        this.b = o3Var;
        this.c = o8Var;
    }

    public final i70 a() {
        return new q60(this.a, this.c, this.b).a();
    }
}
