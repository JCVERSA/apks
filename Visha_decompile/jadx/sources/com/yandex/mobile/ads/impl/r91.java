package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class r91 implements ff1 {
    private final v9 a;
    private final f42 b;
    private final tp1 c;

    public r91(v9 v9Var, f42 f42Var, tp1 tp1Var) {
        y45.j(v9Var, "adTracker");
        y45.j(f42Var, "targetUrlHandler");
        y45.j(tp1Var, "reporter");
        this.a = v9Var;
        this.b = f42Var;
        this.c = tp1Var;
    }

    @Override
    public final void a(String str) {
        y45.j(str, "url");
        this.a.a(str, this.b, this.c);
    }
}
