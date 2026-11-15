package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class en2 implements bv1 {
    private final Context a;

    public en2(Context context) {
        y45.j(context, "context");
        this.a = context.getApplicationContext();
    }

    @Override
    public final ln2 a() {
        return new ln2(new ve1());
    }

    @Override
    public final ol2 b() {
        return new ol2();
    }

    @Override
    public final s01 c() {
        Context context = this.a;
        y45.i(context, "context");
        return nd.a(context, jn2.a, new ol2());
    }

    @Override
    public final on2 d() {
        return new on2(new ve1());
    }

    @Override
    public final fn2 e() {
        return new fn2();
    }

    @Override
    public final void f() {
        jn2 jn2Var = jn2.a;
    }
}
