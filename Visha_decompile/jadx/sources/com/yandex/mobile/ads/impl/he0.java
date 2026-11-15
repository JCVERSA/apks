package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class he0 {
    private final Object a;

    public he0(Object obj) {
        y45.j(obj, "fusedLocationProviderObject");
        this.a = obj;
    }

    public final ct0 a() {
        Object objA = jo1.a.a(this.a, "getLastLocation", new Object[0]);
        if (objA != null) {
            return new ct0(objA);
        }
        return null;
    }
}
