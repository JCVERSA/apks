package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class d3 {
    private final p2 a;
    private final kg2 b;

    public d3(Context context, p2 p2Var) {
        y45.j(context, "context");
        y45.j(p2Var, "adBreak");
        this.a = p2Var;
        this.b = new kg2(context);
    }

    public final void a() {
        this.b.a(this.a, "breakEnd");
    }

    public final void b() {
        this.b.a(this.a, "error");
    }

    public final void c() {
        this.b.a(this.a, "breakStart");
    }
}
