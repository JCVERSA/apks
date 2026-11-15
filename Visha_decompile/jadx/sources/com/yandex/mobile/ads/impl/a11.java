package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.y45;

public final class a11 extends h11 {
    private final boolean a;
    private final ib2 b;

    public a11() {
        this(new ib2());
    }

    @Override
    public final void a(e74 e74Var) {
        y45.j(e74Var, "onValidationFailed");
        try {
            ib2 ib2Var = this.b;
            String strB = com.yandex.div.core.b.b.b();
            ib2Var.getClass();
            hb2 hb2VarA = ib2.a(strB);
            this.b.getClass();
            hb2 hb2VarA2 = ib2.a("31.13.0");
            Integer numValueOf = hb2VarA2 != null ? Integer.valueOf(hb2VarA2.a()) : null;
            if (numValueOf != null) {
                int iIntValue = numValueOf.intValue();
                if (hb2VarA == null || !(this.a || hb2VarA.a() == iIntValue)) {
                    String strA = z0.a(new Object[]{numValueOf, hb2VarA != null ? Integer.valueOf(hb2VarA.a()) : null}, 2, "Unsupported DivKit major version. Expected: %s. Actual: %s", "format(...)");
                    e74Var.invoke(new bp0(strA, strA));
                    throw null;
                }
            }
        } catch (NoClassDefFoundError unused) {
            String strA2 = z0.a(new Object[0], 0, "DivKit is unavailable. Please check your buildscripts for exclusion rules for 'com.yandex.div:div'", "format(...)");
            e74Var.invoke(new bp0(strA2, strA2));
            throw null;
        }
    }

    public a11(ib2 ib2Var) {
        y45.j(ib2Var, "versionNameParser");
        this.a = false;
        this.b = ib2Var;
    }
}
