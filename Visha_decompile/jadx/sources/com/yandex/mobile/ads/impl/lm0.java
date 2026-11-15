package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class lm0 {
    private final h82 a;
    private final im0 b;

    public lm0(h82 h82Var) {
        y45.j(h82Var, "unifiedInstreamAdBinder");
        this.a = h82Var;
        this.b = im0.c.a();
    }

    public final void a(kt ktVar) {
        y45.j(ktVar, "player");
        h82 h82VarA = this.b.a(ktVar);
        if (y45.e(this.a, h82VarA)) {
            return;
        }
        if (h82VarA != null) {
            h82VarA.invalidateAdPlayer();
        }
        this.b.a(ktVar, this.a);
    }

    public final void b(kt ktVar) {
        y45.j(ktVar, "player");
        this.b.b(ktVar);
    }
}
