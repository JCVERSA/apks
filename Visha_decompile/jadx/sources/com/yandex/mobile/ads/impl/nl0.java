package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.y45;

public final class nl0 implements qk.a<rx> {
    final e74 a;
    final e74 b;

    public nl0(e74 e74Var, e74 e74Var2) {
        this.a = e74Var;
        this.b = e74Var2;
    }

    @Override
    public final void a(si2 si2Var) {
        y45.j(si2Var, "error");
        this.b.invoke(si2Var);
    }

    @Override
    public final void a(Object obj) {
        rx rxVar = (rx) obj;
        y45.j(rxVar, "response");
        this.a.invoke(rxVar);
    }
}
