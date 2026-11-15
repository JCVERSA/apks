package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class tx1 implements sx1 {
    private final ps0 b;

    public tx1(ps0 ps0Var) {
        y45.j(ps0Var, "localStorage");
        this.b = ps0Var;
    }

    @Override
    public final String a() {
        return this.b.d("SessionData");
    }

    @Override
    public final void a(String str) {
        this.b.a("SessionData", str);
    }
}
