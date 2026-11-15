package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class s91 {
    private final v9 a;
    private final f42 b;

    public s91(v9 v9Var, f42 f42Var) {
        y45.j(v9Var, "adTracker");
        y45.j(f42Var, "targetUrlHandler");
        this.a = v9Var;
        this.b = f42Var;
    }

    public final r91 a(tp1 tp1Var) {
        y45.j(tp1Var, "clickReporter");
        return new r91(this.a, this.b, tp1Var);
    }
}
