package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ri1 {
    private final r9 a;
    private final n3 b;
    private final me2 c;
    private final z5 d;
    private boolean e;

    public ri1(r9 r9Var, n3 n3Var, me2 me2Var, z5 z5Var) {
        y45.j(r9Var, "adStateHolder");
        y45.j(n3Var, "adCompletionListener");
        y45.j(me2Var, "videoCompletedNotifier");
        y45.j(z5Var, "adPlayerEventsController");
        this.a = r9Var;
        this.b = n3Var;
        this.c = me2Var;
        this.d = z5Var;
    }

    public final void a(boolean z, int i) {
        cj1 cj1VarC = this.a.c();
        if (cj1VarC == null) {
            return;
        }
        v4 v4VarA = cj1VarC.a();
        go0 go0VarB = cj1VarC.b();
        if (wm0.b == this.a.a(go0VarB)) {
            if (z && i == 2) {
                this.c.c();
                return;
            }
            return;
        }
        if (i == 2) {
            this.e = true;
            this.d.i(go0VarB);
        } else if (i == 3 && this.e) {
            this.e = false;
            this.d.h(go0VarB);
        } else if (i == 4) {
            this.b.a(v4VarA, go0VarB);
        }
    }
}
