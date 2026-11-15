package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class f32 implements hr1<String> {
    @Override
    public final String a(wq1 wq1Var) {
        y45.j(wq1Var, "networkResponse");
        byte[] bArrA = wq1Var.a().a();
        if (bArrA == null) {
            return null;
        }
        try {
            return new String(bArrA, nf0.a(wq1Var.b()));
        } catch (Exception unused) {
            return new String(bArrA, defpackage.qv0.b);
        }
    }
}
