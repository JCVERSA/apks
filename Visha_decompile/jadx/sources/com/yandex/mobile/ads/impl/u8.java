package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class u8 implements y8 {
    private final x8 a;
    private final a9 b;
    private final nb2 c;
    private y8 d;

    public u8(x8 x8Var, a9 a9Var, nb2 nb2Var) {
        y45.j(x8Var, "adSectionPlaybackController");
        y45.j(a9Var, "adSectionStatusController");
        y45.j(nb2Var, "adCreativePlaybackProxyListener");
        this.a = x8Var;
        this.b = a9Var;
        this.c = nb2Var;
        x8Var.a(this);
        x8Var.a(nb2Var);
    }

    @Override
    public final void a() {
        this.b.a(z8.f);
        y8 y8Var = this.d;
        if (y8Var != null) {
            y8Var.a();
        }
    }

    @Override
    public final void b() {
        this.b.a(z8.c);
        y8 y8Var = this.d;
        if (y8Var != null) {
            y8Var.b();
        }
    }

    @Override
    public final void c() {
        this.b.a(z8.e);
        y8 y8Var = this.d;
        if (y8Var != null) {
            y8Var.c();
        }
    }

    public final void d() {
        int iOrdinal = this.b.a().ordinal();
        if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2) {
            this.a.c();
        }
    }

    public final void e() {
        int iOrdinal = this.b.a().ordinal();
        if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2) {
            this.a.f();
        }
    }

    public final void f() {
        y8 y8Var;
        int iOrdinal = this.b.a().ordinal();
        if (iOrdinal == 0) {
            this.a.prepare();
            return;
        }
        if (iOrdinal != 1) {
            if (iOrdinal == 4 && (y8Var = this.d) != null) {
                y8Var.a();
                return;
            }
            return;
        }
        y8 y8Var2 = this.d;
        if (y8Var2 != null) {
            y8Var2.b();
        }
    }

    public final void g() {
        y8 y8Var;
        int iOrdinal = this.b.a().ordinal();
        if (iOrdinal == 0) {
            this.a.prepare();
            return;
        }
        if (iOrdinal == 2) {
            this.a.resume();
            return;
        }
        if (iOrdinal != 3) {
            if (iOrdinal == 4 && (y8Var = this.d) != null) {
                y8Var.a();
                return;
            }
            return;
        }
        y8 y8Var2 = this.d;
        if (y8Var2 != null) {
            y8Var2.c();
        }
    }

    public final void h() {
        y8 y8Var;
        int iOrdinal = this.b.a().ordinal();
        if (iOrdinal == 0) {
            this.a.prepare();
            return;
        }
        if (iOrdinal == 1) {
            this.b.a(z8.d);
            this.a.start();
            return;
        }
        if (iOrdinal == 2) {
            this.a.resume();
            return;
        }
        if (iOrdinal != 3) {
            if (iOrdinal == 4 && (y8Var = this.d) != null) {
                y8Var.a();
                return;
            }
            return;
        }
        y8 y8Var2 = this.d;
        if (y8Var2 != null) {
            y8Var2.c();
        }
    }

    public final void a(lo0 lo0Var) {
        this.c.a(lo0Var);
    }

    public final void a(y8 y8Var) {
        this.d = y8Var;
    }
}
