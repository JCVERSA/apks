package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class cf2 implements nu {
    private final gf2 a;
    private final ro0 b;
    private final gg2 c;
    private ef2 d;

    public cf2(gf2 gf2Var, ro0 ro0Var) {
        y45.j(gf2Var, "videoPlayerController");
        y45.j(ro0Var, "instreamVideoPresenter");
        this.a = gf2Var;
        this.b = ro0Var;
        this.c = gf2Var.a();
    }

    public final void a() {
        int iOrdinal = this.c.a().ordinal();
        if (iOrdinal == 0) {
            this.b.g();
            return;
        }
        if (iOrdinal == 7) {
            this.b.e();
            return;
        }
        if (iOrdinal == 4) {
            this.a.d();
            this.b.i();
        } else {
            if (iOrdinal != 5) {
                return;
            }
            this.b.b();
        }
    }

    public final void b() {
        int iOrdinal = this.c.a().ordinal();
        if (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3 || iOrdinal == 4 || iOrdinal == 6 || iOrdinal == 7) {
            this.c.a(fg2.b);
            ef2 ef2Var = this.d;
            if (ef2Var != null) {
                ef2Var.a();
            }
        }
    }

    public final void c() {
        int iOrdinal = this.c.a().ordinal();
        if (iOrdinal == 2 || iOrdinal == 3) {
            this.a.d();
        }
    }

    public final void d() {
        this.c.a(fg2.c);
        this.a.e();
    }

    public final void e() {
        int iOrdinal = this.c.a().ordinal();
        if (iOrdinal == 2 || iOrdinal == 6) {
            this.a.f();
        }
    }

    public final void f() {
        int iOrdinal = this.c.a().ordinal();
        if (iOrdinal == 1) {
            this.c.a(fg2.b);
        } else if (iOrdinal == 2 || iOrdinal == 3 || iOrdinal == 6) {
            this.c.a(fg2.f);
        }
    }

    @Override
    public final void onVideoCompleted() {
        this.c.a(fg2.g);
        ef2 ef2Var = this.d;
        if (ef2Var != null) {
            ef2Var.onVideoCompleted();
        }
    }

    @Override
    public final void onVideoError() {
        this.c.a(fg2.i);
        ef2 ef2Var = this.d;
        if (ef2Var != null) {
            ef2Var.onVideoError();
        }
    }

    @Override
    public final void onVideoPaused() {
        this.c.a(fg2.h);
        ef2 ef2Var = this.d;
        if (ef2Var != null) {
            ef2Var.onVideoPaused();
        }
    }

    @Override
    public final void onVideoPrepared() {
        if (fg2.c == this.c.a()) {
            this.c.a(fg2.d);
            this.b.f();
        }
    }

    @Override
    public final void onVideoResumed() {
        this.c.a(fg2.e);
        ef2 ef2Var = this.d;
        if (ef2Var != null) {
            ef2Var.onVideoResumed();
        }
    }

    public final void a(ef2 ef2Var) {
        this.d = ef2Var;
    }
}
