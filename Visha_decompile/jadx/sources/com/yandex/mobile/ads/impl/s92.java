package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.ye9;
import java.util.Objects;
import java.util.Set;

public final class s92 {
    public static final void a(r92 r92Var, op1 op1Var) {
        String strA;
        Set<Long> setF;
        y45.j(r92Var, "<this>");
        y45.j(op1Var, "report");
        try {
            f fVarA = op1Var.a();
            if (fVarA == null || (strA = fVarA.a()) == null) {
                strA = "";
            }
            f fVarA2 = op1Var.a();
            if (fVarA2 == null || (setF = fVarA2.b()) == null) {
                setF = ye9.f();
            }
            r92Var.setExperiments(strA);
            r92Var.setTriggeredTestIds(setF);
            Objects.toString(setF);
            sp0.a(new Object[0]);
        } catch (Throwable th) {
            th.toString();
            sp0.b(new Object[0]);
        }
    }
}
