package com.yandex.mobile.ads.impl;

import defpackage.y45;

final class px1 implements ox1 {
    private final ps0 b;

    public px1(ps0 ps0Var) {
        y45.j(ps0Var, "localStorage");
        this.b = ps0Var;
    }

    @Override
    public final String a() {
        return this.b.d("ServerSideClientIP");
    }

    @Override
    public final void a(String str) {
        this.b.a("ServerSideClientIP", str);
    }
}
