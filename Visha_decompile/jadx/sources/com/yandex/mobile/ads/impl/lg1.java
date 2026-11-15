package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;

public final class lg1 implements cx1 {
    private jc0 a;
    private p52 b;
    private a62 c;

    public lg1(String str) {
        this.a = new jc0.a().e(str).a();
    }

    @Override
    public final void a(ag1 ag1Var) {
        p52 p52Var = this.b;
        if (p52Var == null) {
            throw new IllegalStateException();
        }
        int i = f92.a;
        long jB = p52Var.b();
        long jC = this.b.c();
        if (jB == C.TIME_UNSET || jC == C.TIME_UNSET) {
            return;
        }
        jc0 jc0Var = this.a;
        if (jC != jc0Var.q) {
            jc0 jc0VarA = jc0Var.a().a(jC).a();
            this.a = jc0VarA;
            this.c.a(jc0VarA);
        }
        int iA = ag1Var.a();
        this.c.a(iA, ag1Var);
        this.c.a(jB, 1, iA, 0, null);
    }

    @Override
    public final void a(p52 p52Var, b80 b80Var, p72.d dVar) {
        this.b = p52Var;
        dVar.a();
        a62 a62VarA = b80Var.a(dVar.c(), 5);
        this.c = a62VarA;
        a62VarA.a(this.a);
    }
}
