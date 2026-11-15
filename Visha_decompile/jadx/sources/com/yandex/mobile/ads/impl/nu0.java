package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class nu0 {
    private static final Object c = new Object();
    private final ou0 a;
    private final mu0 b;

    public nu0(ps0 ps0Var) {
        y45.j(ps0Var, "localStorage");
        this.a = new ou0(ps0Var);
        this.b = new mu0();
    }

    public final String a() {
        String strA;
        synchronized (c) {
            strA = this.a.a();
            if (strA == null) {
                this.b.getClass();
                strA = mu0.a();
                this.a.a(strA);
            }
        }
        return strA;
    }
}
