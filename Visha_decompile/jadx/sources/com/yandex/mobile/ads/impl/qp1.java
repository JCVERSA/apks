package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class qp1 {
    public static final pp1 a(pp1 pp1Var, pp1 pp1Var2) {
        y45.j(pp1Var, "<this>");
        if (pp1Var2 == null) {
            return new pp1((Map<String, ? extends Object>) pp1Var.b(), pp1Var.a());
        }
        f fVarA = pp1Var.a();
        if (fVarA == null) {
            fVarA = pp1Var2.a();
        }
        return new pp1((Map<String, ? extends Object>) kotlin.collections.a.s(pp1Var.b(), pp1Var2.b()), fVarA);
    }
}
