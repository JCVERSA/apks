package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;

public final class sk0 {
    private final tk0 a;
    private boolean b;
    private boolean c;

    public sk0(tk0 tk0Var) {
        y45.j(tk0Var, "impressionReporter");
        this.a = tk0Var;
    }

    public final void a() {
        this.b = false;
        this.c = false;
    }

    public final void b() {
        if (this.b) {
            return;
        }
        this.b = true;
        this.a.a(op1.b.x);
    }

    public final void c() {
        if (this.c) {
            return;
        }
        this.c = true;
        this.a.a(op1.b.y, ky5.h(abb.a("failure_tracked", Boolean.FALSE)));
    }
}
