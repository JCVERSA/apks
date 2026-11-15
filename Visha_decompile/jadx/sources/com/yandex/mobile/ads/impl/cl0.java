package com.yandex.mobile.ads.impl;

import android.widget.FrameLayout;
import defpackage.y45;
import java.util.List;

public final class cl0 {
    private static final List<n92.a> b = defpackage.y71.n(n92.a.c, n92.a.d, n92.a.i);
    private final dl0 a;

    public cl0() {
        this(new dl0());
    }

    public final void a(FrameLayout frameLayout) {
        y45.j(frameLayout, "adView");
        this.a.a(frameLayout);
    }

    public cl0(dl0 dl0Var) {
        y45.j(dl0Var, "renderer");
        this.a = dl0Var;
    }

    public final void a(n92 n92Var, FrameLayout frameLayout) {
        y45.j(n92Var, "validationResult");
        y45.j(frameLayout, "adView");
        this.a.a(frameLayout, n92Var, !b.contains(n92Var.b()));
    }
}
