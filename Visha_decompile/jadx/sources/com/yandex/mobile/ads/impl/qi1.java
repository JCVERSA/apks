package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class qi1 {
    private final q9 a;
    private final m3 b;
    private final le2 c;
    private final y5 d;
    private boolean e;

    public qi1(q9 q9Var, m3 m3Var, le2 le2Var, y5 y5Var) {
        y45.j(q9Var, "adStateHolder");
        y45.j(m3Var, "adCompletionListener");
        y45.j(le2Var, "videoCompletedNotifier");
        y45.j(y5Var, "adPlayerEventsController");
        this.a = q9Var;
        this.b = m3Var;
        this.c = le2Var;
        this.d = y5Var;
    }

    public final void a(boolean z, int i) {
        bj1 bj1VarC = this.a.c();
        if (bj1VarC == null) {
            return;
        }
        u4 u4VarA = bj1VarC.a();
        go0 go0VarB = bj1VarC.b();
        if (vm0.b == this.a.a(go0VarB)) {
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
            this.b.a(u4VarA, go0VarB);
        }
    }
}
