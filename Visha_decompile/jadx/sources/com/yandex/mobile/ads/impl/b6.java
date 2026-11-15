package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.b6;
import defpackage.y45;

public final class b6 {
    private final z5 a;
    private final r9 b;
    private final a5 c;
    private final vi1 d;
    private final ji1 e;
    private final w5 f;
    private final ao0 g;

    public b6(p9 p9Var, ti1 ti1Var, z5 z5Var, r9 r9Var, a5 a5Var, vi1 vi1Var, ji1 ji1Var, w5 w5Var, ao0 ao0Var) {
        y45.j(p9Var, "adStateDataController");
        y45.j(ti1Var, "playerStateController");
        y45.j(z5Var, "adPlayerEventsController");
        y45.j(r9Var, "adStateHolder");
        y45.j(a5Var, "adInfoStorage");
        y45.j(vi1Var, "playerStateHolder");
        y45.j(ji1Var, "playerAdPlaybackController");
        y45.j(w5Var, "adPlayerDiscardController");
        y45.j(ao0Var, "instreamSettings");
        this.a = z5Var;
        this.b = r9Var;
        this.c = a5Var;
        this.d = vi1Var;
        this.e = ji1Var;
        this.f = w5Var;
        this.g = ao0Var;
    }

    public final void a(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        if (wm0.d == this.b.a(go0Var)) {
            this.b.a(go0Var, wm0.e);
            cj1 cj1VarC = this.b.c();
            defpackage.zi.g(y45.e(go0Var, cj1VarC != null ? cj1VarC.d() : null));
            this.d.a(false);
            this.e.a();
            this.a.c(go0Var);
        }
    }

    public final void b(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        wm0 wm0VarA = this.b.a(go0Var);
        if (wm0.b == wm0VarA || wm0.c == wm0VarA) {
            this.b.a(go0Var, wm0.d);
            Object objE = defpackage.zi.e(this.c.a(go0Var));
            y45.i(objE, "checkNotNull(...)");
            this.b.a(new cj1((v4) objE, go0Var));
            this.a.d(go0Var);
            return;
        }
        if (wm0.e == wm0VarA) {
            cj1 cj1VarC = this.b.c();
            defpackage.zi.g(y45.e(go0Var, cj1VarC != null ? cj1VarC.d() : null));
            this.b.a(go0Var, wm0.d);
            this.a.e(go0Var);
        }
    }

    public final void e(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        w5.b bVar = w5.b.b;
        w5.a aVar = new w5.a() {
            @Override
            public final void a() {
                b6.b(this.a, go0Var);
            }
        };
        wm0 wm0VarA = this.b.a(go0Var);
        wm0 wm0Var = wm0.b;
        if (wm0Var == wm0VarA) {
            v4 v4VarA = this.c.a(go0Var);
            if (v4VarA != null) {
                this.f.a(v4VarA, bVar, aVar);
                return;
            }
            return;
        }
        this.b.a(go0Var, wm0Var);
        cj1 cj1VarC = this.b.c();
        if (cj1VarC == null) {
            sp0.b(new Object[0]);
        } else {
            this.f.a(cj1VarC.c(), bVar, aVar);
        }
    }

    public final void c(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        if (wm0.e == this.b.a(go0Var)) {
            this.b.a(go0Var, wm0.d);
            cj1 cj1VarC = this.b.c();
            defpackage.zi.g(y45.e(go0Var, cj1VarC != null ? cj1VarC.d() : null));
            this.d.a(true);
            this.e.b();
            this.a.e(go0Var);
        }
    }

    public final void d(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        w5.b bVar = this.g.f() ? w5.b.c : w5.b.b;
        w5.a aVar = new w5.a() {
            @Override
            public final void a() {
                b6.a(this.a, go0Var);
            }
        };
        wm0 wm0VarA = this.b.a(go0Var);
        wm0 wm0Var = wm0.b;
        if (wm0Var == wm0VarA) {
            v4 v4VarA = this.c.a(go0Var);
            if (v4VarA != null) {
                this.f.a(v4VarA, bVar, aVar);
                return;
            }
            return;
        }
        this.b.a(go0Var, wm0Var);
        cj1 cj1VarC = this.b.c();
        if (cj1VarC != null) {
            this.f.a(cj1VarC.c(), bVar, aVar);
        } else {
            sp0.b(new Object[0]);
        }
    }

    public static final void a(b6 b6Var, go0 go0Var) {
        y45.j(b6Var, "this$0");
        y45.j(go0Var, "$videoAd");
        b6Var.a.a(go0Var);
    }

    public static final void b(b6 b6Var, go0 go0Var) {
        y45.j(b6Var, "this$0");
        y45.j(go0Var, "$videoAd");
        b6Var.a.f(go0Var);
    }
}
