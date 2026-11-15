package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class qn0 {
    public static pn0 a(ju1 ju1Var) {
        String strZ;
        pn0 pn0Var;
        if (ju1Var != null && (strZ = ju1Var.z()) != null) {
            pn0.c.getClass();
            y45.j(strZ, ES6Iterator.VALUE_PROPERTY);
            pn0[] pn0VarArrValues = pn0.values();
            int length = pn0VarArrValues.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    pn0Var = null;
                    break;
                }
                pn0Var = pn0VarArrValues[i];
                if (y45.e(pn0Var.b(), strZ)) {
                    break;
                }
                i++;
            }
            if (pn0Var != null) {
                return pn0Var;
            }
        }
        pn0.c.getClass();
        return pn0.d;
    }
}
