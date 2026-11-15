package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class f4 {
    private final b4 a;
    private final ym0 b;
    private final j4 c;
    private final h4 d;

    public f4(b4 b4Var, ym0 ym0Var, j4 j4Var, h4 h4Var) {
        y45.j(b4Var, "adGroupController");
        y45.j(ym0Var, "uiElementsManager");
        y45.j(j4Var, "adGroupPlaybackEventsListener");
        y45.j(h4Var, "adGroupPlaybackController");
        this.a = b4Var;
        this.b = ym0Var;
        this.c = j4Var;
        this.d = h4Var;
    }

    public final void a() {
        do0 do0VarC = this.a.c();
        if (do0VarC != null) {
            do0VarC.a();
        }
        k4 k4VarF = this.a.f();
        if (k4VarF == null) {
            this.b.a();
            this.c.g();
            return;
        }
        this.b.a(k4VarF.c());
        int iOrdinal = k4VarF.b().a().ordinal();
        if (iOrdinal == 0) {
            this.d.b();
            this.b.a();
            this.c.c();
            this.d.e();
            return;
        }
        if (iOrdinal == 1) {
            this.d.b();
            this.b.a();
            this.c.c();
        } else {
            if (iOrdinal == 2) {
                this.c.a();
                this.d.d();
                return;
            }
            if (iOrdinal != 4 && iOrdinal != 5) {
                if (iOrdinal == 6) {
                    this.c.b();
                    this.d.f();
                    return;
                } else if (iOrdinal != 8 && iOrdinal != 9) {
                    return;
                }
            }
            a();
        }
    }
}
