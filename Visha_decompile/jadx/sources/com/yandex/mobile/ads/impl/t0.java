package com.yandex.mobile.ads.impl;

import android.content.Intent;
import defpackage.y45;

public final class t0 {
    private final o3 a;
    private final o8<?> b;

    public t0(o8 o8Var, o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        this.a = o3Var;
        this.b = o8Var;
    }

    public final c1 a(Intent intent) {
        y45.j(intent, "resultActivityIntent");
        return new c1(new c1.a(this.b, this.a, new t8()).a(intent));
    }
}
