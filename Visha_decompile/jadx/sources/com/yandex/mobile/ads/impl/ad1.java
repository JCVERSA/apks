package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.apache.commons.text.lookup.StringLookupFactory;

public final class ad1 implements zc1 {
    private final sj a;

    public ad1() {
        this(new sj());
    }

    @Override
    public final String a(wq1 wq1Var) {
        y45.j(wq1Var, "networkResponse");
        byte[] bArrA = wq1Var.a().a();
        if (bArrA == null) {
            return null;
        }
        if (!nf0.a(wq1Var.b(), vh0.e0, true)) {
            return new String(bArrA, defpackage.qv0.b);
        }
        this.a.getClass();
        return sj.a(bArrA);
    }

    public ad1(sj sjVar) {
        y45.j(sjVar, StringLookupFactory.KEY_BASE64_DECODER);
        this.a = sjVar;
    }
}
