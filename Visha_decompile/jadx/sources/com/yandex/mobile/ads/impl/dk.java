package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class dk implements ov1.a {
    final ck<Object> a;
    final p82 b;

    public dk(ck<Object> ckVar, p82 p82Var) {
        this.a = ckVar;
        this.b = p82Var;
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        this.a.b(w3Var);
    }

    @Override
    public final void a(jc jcVar, o50 o50Var) {
        y45.j(jcVar, "advertisingConfiguration");
        y45.j(o50Var, "environmentConfiguration");
        this.a.f().a(jcVar);
        this.a.f().a(o50Var);
        this.a.b(this.b);
    }
}
