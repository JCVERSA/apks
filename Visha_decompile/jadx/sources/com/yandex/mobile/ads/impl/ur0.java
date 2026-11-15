package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.ProgressBar;
import defpackage.af5;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

public final class ur0 implements yl1 {
    static final af5[] d = {xq8.f(new MutablePropertyReference1Impl(ur0.class, "progressBar", "getProgressBar()Landroid/widget/ProgressBar;", 0))};
    private final tr0 a;
    private final yd b;
    private final go1 c;

    public ur0() {
        this(0);
    }

    @Override
    public final void a(long j, long j2) {
        ProgressBar progressBar = (ProgressBar) this.c.getValue(this, d[0]);
        if (progressBar != null) {
            this.b.getClass();
            yd.a(progressBar, j, j2);
        }
    }

    public final void b() {
        this.c.setValue(this, d[0], null);
    }

    public ur0(int i) {
        this(new tr0(), new yd());
    }

    @Override
    public final void a() {
        ProgressBar progressBar = (ProgressBar) this.c.getValue(this, d[0]);
        if (progressBar != null) {
            long max = progressBar.getMax();
            this.b.getClass();
            yd.a(progressBar, max, max);
        }
    }

    public ur0(tr0 tr0Var, yd ydVar) {
        y45.j(tr0Var, "progressBarProvider");
        y45.j(ydVar, "animatedProgressBarController");
        this.a = tr0Var;
        this.b = ydVar;
        this.c = ho1.a(null);
    }

    public final void a(View view) {
        y45.j(view, "view");
        this.a.getClass();
        y45.j(view, "view");
        View viewFindViewWithTag = view.findViewWithTag("linear_progress_view");
        this.c.setValue(this, d[0], viewFindViewWithTag instanceof ProgressBar ? (ProgressBar) viewFindViewWithTag : null);
    }
}
