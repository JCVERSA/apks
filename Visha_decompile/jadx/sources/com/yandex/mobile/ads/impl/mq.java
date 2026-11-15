package com.yandex.mobile.ads.impl;

import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class mq implements f72 {
    private static nq b(ps0 ps0Var, gq gqVar) {
        nq cVar;
        String strB = gqVar.b();
        try {
            int iOrdinal = gqVar.ordinal();
            if (iOrdinal != 0) {
                boolean z = true;
                if (iOrdinal == 1) {
                    int iB = ps0Var.b(-1, strB);
                    Integer numValueOf = Integer.valueOf(iB);
                    if (iB == -1) {
                        numValueOf = null;
                    }
                    cVar = new nq.d(numValueOf != null ? String.valueOf(numValueOf.intValue()) : null);
                } else if (iOrdinal == 2) {
                    if (ps0Var.b(-1, strB) == -1) {
                        z = false;
                    }
                    cVar = new nq.b(z);
                } else if (iOrdinal == 3) {
                    cVar = new nq.e(ps0Var.d(strB));
                } else if (iOrdinal == 4) {
                    cVar = new nq.f(ps0Var.d(strB));
                } else {
                    if (iOrdinal != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    cVar = new nq.a(ps0Var.d(strB));
                }
            } else {
                cVar = new nq.c(ps0Var.d(strB));
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
        if (!ps0Var.c(gqVar.b())) {
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
            y45.j(str, "v2");
            gq[] gqVarArrValues = gq.values();
            int length = gqVarArrValues.length;
            for (int i = 0; i < length; i++) {
                gqVar = gqVarArrValues[i];
                if (!y45.e(gqVar.b(), str)) {
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
