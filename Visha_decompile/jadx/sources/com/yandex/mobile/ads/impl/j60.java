package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class j60 implements kt {
    private final r9 a;
    private final bm1 b;
    private final d6 c;
    private final b6 d;
    private final z5 e;
    private final vi1 f;
    private final zi1 g;

    public j60(r9 r9Var, ti1 ti1Var, sl1 sl1Var, d6 d6Var, b6 b6Var, z5 z5Var, vi1 vi1Var, zi1 zi1Var) {
        y45.j(r9Var, "adStateHolder");
        y45.j(ti1Var, "playerStateController");
        y45.j(sl1Var, "progressProvider");
        y45.j(d6Var, "prepareController");
        y45.j(b6Var, "playController");
        y45.j(z5Var, "adPlayerEventsController");
        y45.j(vi1Var, "playerStateHolder");
        y45.j(zi1Var, "playerVolumeController");
        this.a = r9Var;
        this.b = sl1Var;
        this.c = d6Var;
        this.d = b6Var;
        this.e = z5Var;
        this.f = vi1Var;
        this.g = zi1Var;
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
        return this.a.a(go0Var) != wm0.b && this.f.c();
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
