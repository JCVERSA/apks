package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class dp0 implements hq1<rx> {
    private final aj2<rx> a;

    public dp0(aj2<rx> aj2Var) {
        y45.j(aj2Var, "responseParser");
        this.a = aj2Var;
    }

    @Override
    public final boolean a() {
        return true;
    }

    @Override
    public final rx a(xc1 xc1Var) {
        y45.j(xc1Var, "networkResponse");
        return this.a.a(xc1Var);
    }
}
