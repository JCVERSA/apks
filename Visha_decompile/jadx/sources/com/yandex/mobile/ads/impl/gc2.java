package com.yandex.mobile.ads.impl;

import defpackage.c74;
import defpackage.e74;
import defpackage.y45;

public final class gc2 implements ov1.a {
    final lc2 a;
    final Object b;
    final c74 c;
    final e74 d;

    public gc2(lc2 lc2Var, Object obj, c74 c74Var, e74 e74Var) {
        this.a = lc2Var;
        this.b = obj;
        this.c = c74Var;
        this.d = e74Var;
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        this.a.f.getClass();
        y45.j(w3Var, "error");
        this.d.invoke(new sb2(w3Var.b(), w3Var.d() != null ? w3Var.c() : "Internal error occured while loading ads."));
    }

    @Override
    public final void a(jc jcVar, o50 o50Var) {
        y45.j(jcVar, "advertisingConfiguration");
        y45.j(o50Var, "environmentConfiguration");
        lc2.a(this.a, jcVar, o50Var);
        this.a.h.add(this.b);
        this.c.invoke();
    }
}
