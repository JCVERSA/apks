package com.yandex.mobile.ads.impl;

import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class lq implements f72 {
    private static nq b(ps0 ps0Var, gq gqVar) {
        nq cVar;
        String strA = gqVar.a();
        if (strA == null) {
            return null;
        }
        try {
            int iOrdinal = gqVar.ordinal();
            if (iOrdinal == 0) {
                cVar = new nq.c(ps0Var.d(strA));
            } else if (iOrdinal == 1) {
                cVar = new nq.d(ps0Var.d(strA));
            } else if (iOrdinal == 2) {
                cVar = new nq.b(ps0Var.a(strA, false));
            } else if (iOrdinal == 3) {
                cVar = new nq.e(ps0Var.d(strA));
            } else {
                if (iOrdinal != 4) {
                    if (iOrdinal == 5) {
                        return null;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                cVar = new nq.f(ps0Var.d(strA));
            }
            return cVar;
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override
    public final nq a(ps0 ps0Var, gq gqVar) {
        y45.j(ps0Var, "localStorage");
        y45.j(gqVar, "type");
        if (gqVar.a() == null || !ps0Var.c(gqVar.a())) {
            gqVar = null;
        }
        if (gqVar != null) {
            return b(ps0Var, gqVar);
        }
        return null;
    }

    @Override
    public final nq a(ps0 ps0Var, String str) {
        gq gqVar;
        y45.j(ps0Var, "localStorage");
        y45.j(str, "key");
        if (!ps0Var.c(str)) {
            str = null;
        }
        if (str != null) {
            gq.d.getClass();
            y45.j(str, "v1");
            gq[] gqVarArrValues = gq.values();
            int length = gqVarArrValues.length;
            for (int i = 0; i < length; i++) {
                gqVar = gqVarArrValues[i];
                if (!y45.e(gqVar.a(), str)) {
                }
            }
            gqVar = null;
        } else {
            gqVar = null;
        }
        if (gqVar != null) {
            return b(ps0Var, gqVar);
        }
        return null;
    }
}
