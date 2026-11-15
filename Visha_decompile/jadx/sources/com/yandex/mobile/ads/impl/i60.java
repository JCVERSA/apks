package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class i60 implements kt {
    private final q9 a;
    private final am1 b;
    private final c6 c;
    private final a6 d;
    private final y5 e;
    private final ui1 f;
    private final yi1 g;

    public i60(q9 q9Var, si1 si1Var, rl1 rl1Var, c6 c6Var, a6 a6Var, y5 y5Var, ui1 ui1Var, yi1 yi1Var) {
        y45.j(q9Var, "adStateHolder");
        y45.j(si1Var, "playerStateController");
        y45.j(rl1Var, "progressProvider");
        y45.j(c6Var, "prepareController");
        y45.j(a6Var, "playController");
        y45.j(y5Var, "adPlayerEventsController");
        y45.j(ui1Var, "playerStateHolder");
        y45.j(yi1Var, "playerVolumeController");
        this.a = q9Var;
        this.b = rl1Var;
        this.c = c6Var;
        this.d = a6Var;
        this.e = y5Var;
        this.f = ui1Var;
        this.g = yi1Var;
    }

    @Override
    public final long a(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        return this.b.a().b();
    }

    @Override
    public final long b(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        return this.b.a().c();
    }

    @Override
    public final void c(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        try {
            this.d.b(go0Var);
        } catch (RuntimeException e) {
            sp0.b(e);
        }
    }

    @Override
    public final void d(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        try {
            this.c.a(go0Var);
        } catch (RuntimeException e) {
            sp0.b(e);
        }
    }

    @Override
    public final void e(go0 go0Var) {
        y45.j(go0Var, "videoAd");
    }

    @Override
    public final void f(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        try {
            this.d.a(go0Var);
        } catch (RuntimeException e) {
            sp0.b(e);
        }
    }

    @Override
    public final void g(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        try {
            this.d.c(go0Var);
        } catch (RuntimeException e) {
            sp0.b(e);
        }
    }

    @Override
    public final void h(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        try {
            this.d.d(go0Var);
        } catch (RuntimeException e) {
            sp0.b(e);
        }
    }

    @Override
    public final void i(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        try {
            this.d.e(go0Var);
        } catch (RuntimeException e) {
            sp0.b(e);
        }
    }

    @Override
    public final boolean j(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        return this.a.a(go0Var) != vm0.b && this.f.c();
    }

    @Override
    public final float k(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        Float fA = this.g.a();
        if (fA != null) {
            return fA.floatValue();
        }
        return 0.0f;
    }

    @Override
    public final void a(km0 km0Var) {
        this.e.a(km0Var);
    }

    @Override
    public final void a(go0 go0Var, float f) {
        y45.j(go0Var, "videoAd");
        this.g.a(f);
        this.e.a(go0Var, f);
    }
}
