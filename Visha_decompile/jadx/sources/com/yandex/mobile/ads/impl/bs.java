package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class bs {
    private final o8<?> a;
    private k3 b;
    private n91 c;
    private f52 d;
    private final b30 e;
    private final yl1 f;

    public bs(o8 o8Var, k3 k3Var, n91 n91Var, f52 f52Var, b30 b30Var, ur0 ur0Var) {
        y45.j(o8Var, "adResponse");
        y45.j(k3Var, "adCompleteListener");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(ur0Var, "progressListener");
        this.a = o8Var;
        this.b = k3Var;
        this.c = n91Var;
        this.d = f52Var;
        this.e = b30Var;
        this.f = ur0Var;
    }

    public final yc0 a() {
        db1 db1VarA = this.c.a();
        ic1 ic1VarB = this.c.b();
        b30 b30Var = this.e;
        if (y45.e(b30Var != null ? b30Var.e() : null, h10.d.a())) {
            return new q81(this.b, this.d, this.f);
        }
        if (db1VarA == null) {
            return ic1VarB != null ? new hc1(ic1VarB, this.b) : new q81(this.b, this.d, this.f);
        }
        o8<?> o8Var = this.a;
        return new cb1(o8Var, db1VarA, this.b, this.f, o8Var.K());
    }
}
