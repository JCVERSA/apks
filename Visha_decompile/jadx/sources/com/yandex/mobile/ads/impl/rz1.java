package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.HashSet;

public final class rz1 {
    private static final HashSet b = new HashSet(defpackage.y71.n(b52.c, b52.b));
    private final d52 a;

    public rz1() {
        this(new d52(b));
    }

    public final od2 a(uu uuVar) {
        y45.j(uuVar, "creative");
        int iE = uuVar.e();
        sz1 sz1VarI = uuVar.i();
        if (sz1VarI != null) {
            na2 na2VarA = this.a.a(sz1VarI.a());
            if (na2VarA != null) {
                float fD = na2VarA.d();
                if (na2.b.c == na2VarA.c()) {
                    fD = (long) ((fD / 100) * iE);
                }
                return new od2((long) Math.min(fD, iE));
            }
        }
        return null;
    }

    public rz1(d52 d52Var) {
        y45.j(d52Var, "timeOffsetParser");
        this.a = d52Var;
    }
}
