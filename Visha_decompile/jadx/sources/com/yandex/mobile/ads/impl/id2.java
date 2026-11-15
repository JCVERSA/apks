package com.yandex.mobile.ads.impl;

import defpackage.af5;
import defpackage.fd7;
import defpackage.y45;

public final class id2 extends fd7 {
    final jd2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public id2(jd2 jd2Var) {
        super(null);
        this.a = jd2Var;
    }

    @Override
    public final void afterChange(af5 af5Var, ld2.a aVar, ld2.a aVar2) {
        y45.j(af5Var, "property");
        this.a.f.a(aVar2);
    }
}
