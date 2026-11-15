package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class n31 implements View.OnAttachStateChangeListener {
    private final g31 a;
    private final long b;

    public n31(g31 g31Var, long j) {
        y45.j(g31Var, "multiBannerAutoSwipeController");
        this.a = g31Var;
        this.b = j;
    }

    @Override
    public final void onViewAttachedToWindow(View view) {
        y45.j(view, "v");
        this.a.a(this.b);
    }

    @Override
    public final void onViewDetachedFromWindow(View view) {
        y45.j(view, "v");
        this.a.b();
    }
}
