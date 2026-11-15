package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import defpackage.y45;

public final class iw1 implements fj {
    private final bv1 a;

    public iw1(bv1 bv1Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        this.a = bv1Var;
    }

    @Override
    public final ej a(aj ajVar) {
        y45.j(ajVar, "adViewController");
        bv1 bv1Var = this.a;
        z91 z91Var = new z91(ajVar.l(), bv1Var, ajVar.f(), ajVar.i());
        nj njVar = new nj(ajVar.f());
        t71 t71Var = new t71(ajVar.f());
        xt1 xt1Var = new xt1(ajVar.f());
        b81 b81Var = new b81(ajVar);
        Handler handler = new Handler(Looper.getMainLooper());
        int i = pw1.l;
        return new hw1(ajVar, bv1Var, z91Var, njVar, t71Var, xt1Var, b81Var, handler, pw1.a.a(), new cj(), new d61());
    }
}
