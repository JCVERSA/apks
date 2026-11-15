package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.af5;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class p00 {
    static final af5[] e = {ta.a(p00.class, "weakSkipButton", "getWeakSkipButton()Landroid/view/View;", 0)};
    private final lz1 a;
    private final long b;
    private final mg1 c;
    private final go1 d;

    public static final class a implements og1 {
        private final lz1 a;
        private final WeakReference<View> b;

        public a(View view, lz1 lz1Var) {
            y45.j(view, "view");
            y45.j(lz1Var, "skipAppearanceController");
            this.a = lz1Var;
            this.b = new WeakReference<>(view);
        }

        @Override
        public final void a() {
            View view = this.b.get();
            if (view != null) {
                this.a.b(view);
            }
        }
    }

    public p00(View view, lz1 lz1Var, long j, mg1 mg1Var) {
        y45.j(view, "skipButton");
        y45.j(lz1Var, "skipAppearanceController");
        y45.j(mg1Var, "pausableTimer");
        this.a = lz1Var;
        this.b = j;
        this.c = mg1Var;
        this.d = ho1.a(view);
        lz1Var.a(view);
    }

    public final void a() {
        this.c.invalidate();
    }

    public final void b() {
        View view = (View) this.d.getValue(this, e[0]);
        if (view != null) {
            a aVar = new a(view, this.a);
            long j = this.b;
            if (j == 0) {
                this.a.b(view);
            } else {
                this.c.a(j, aVar);
            }
        }
    }

    public final void c() {
        this.c.pause();
    }

    public final void d() {
        this.c.resume();
    }
}
