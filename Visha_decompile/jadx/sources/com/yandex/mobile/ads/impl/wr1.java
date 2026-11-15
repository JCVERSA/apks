package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;
import org.apache.commons.text.lookup.StringLookupFactory;

public final class wr1 {
    private final sj a;

    public wr1() {
        this(new sj());
    }

    public final ur1 a(wq1 wq1Var) {
        Integer numValueOf;
        String strA;
        y45.j(wq1Var, "networkResponse");
        Map<String, String> mapB = wq1Var.b();
        vh0 vh0Var = vh0.C;
        int i = nf0.b;
        y45.j(mapB, "responseHeaders");
        y45.j(vh0Var, "httpHeader");
        String strA2 = nf0.a(mapB, vh0Var);
        int i2 = oa.b;
        rx1 rx1Var = null;
        if (strA2 != null) {
            try {
                numValueOf = Integer.valueOf(strA2);
            } catch (NumberFormatException unused) {
                numValueOf = null;
            }
        } else {
            numValueOf = null;
        }
        String strA3 = nf0.a(mapB, vh0.E);
        if (strA3 != null) {
            this.a.getClass();
            strA = sj.a(strA3);
        } else {
            strA = null;
        }
        hp hpVar = (numValueOf == null || strA == null || strA.length() <= 0) ? null : new hp(numValueOf.intValue(), strA);
        vh0 vh0Var2 = vh0.F;
        y45.j(mapB, "responseHeaders");
        y45.j(vh0Var2, "header");
        String str = (String) defpackage.i81.q0(nf0.c(mapB, vh0Var2));
        if (str != null && str.length() > 0) {
            rx1Var = new rx1(str);
        }
        vh0 vh0Var3 = vh0.K;
        y45.j(mapB, "responseHeaders");
        y45.j(vh0Var3, "httpHeader");
        String strA4 = nf0.a(mapB, vh0Var3);
        return new ur1.a().a(hpVar).a(rx1Var).a(strA4 == null ? false : Boolean.parseBoolean(strA4)).a();
    }

    public wr1(sj sjVar) {
        y45.j(sjVar, StringLookupFactory.KEY_BASE64_DECODER);
        this.a = sjVar;
    }
}
