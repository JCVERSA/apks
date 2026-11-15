package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.ProgressBar;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class ql1 implements rp {
    private final View a;
    private final ProgressBar b;
    private final op c;
    private final yp d;
    private final dw e;
    private final xl1 f;
    private final long g;
    private final mg1 h;
    private final og1 i;
    private final m52 j;

    public static final class a implements m52 {
        private final yp a;
        private final long b;
        private final WeakReference<ProgressBar> c;

        public a(ProgressBar progressBar, yp ypVar, long j) {
            y45.j(progressBar, "progressView");
            y45.j(ypVar, "closeProgressAppearanceController");
            this.a = ypVar;
            this.b = j;
            this.c = new WeakReference<>(progressBar);
        }

        @Override
        public final void a(long j, long j2) {
            ProgressBar progressBar = this.c.get();
            if (progressBar != null) {
                yp ypVar = this.a;
                long j3 = this.b;
                ypVar.a(progressBar, j3, j3 - j);
            }
        }
    }

    public static final class b implements og1 {
        private final op a;
        private final dw b;
        private final WeakReference<View> c;

        public b(View view, h50 h50Var, dw dwVar) {
            y45.j(view, "closeView");
            y45.j(h50Var, "closeAppearanceController");
            y45.j(dwVar, "debugEventsReporter");
            this.a = h50Var;
            this.b = dwVar;
            this.c = new WeakReference<>(view);
        }

        @Override
        public final void a() {
            View view = this.c.get();
            if (view != null) {
                this.a.b(view);
                this.b.a(cw.e);
            }
        }
    }

    public ql1(View view, ProgressBar progressBar, h50 h50Var, yp ypVar, dw dwVar, xl1 xl1Var, long j) {
        y45.j(view, "closeButton");
        y45.j(progressBar, "closeProgressView");
        y45.j(h50Var, "closeAppearanceController");
        y45.j(ypVar, "closeProgressAppearanceController");
        y45.j(dwVar, "debugEventsReporter");
        y45.j(xl1Var, "progressIncrementer");
        this.a = view;
        this.b = progressBar;
        this.c = h50Var;
        this.d = ypVar;
        this.e = dwVar;
        this.f = xl1Var;
        this.g = j;
        int i = mg1.a;
        this.h = mg1.a.a(true);
        this.i = new b(d(), h50Var, dwVar);
        this.j = new a(progressBar, ypVar, j);
    }

    @Override
    public final void a(boolean z) {
    }

    @Override
    public final void b() {
        this.h.pause();
    }

    @Override
    public final void c() {
        yp ypVar = this.d;
        ProgressBar progressBar = this.b;
        int i = (int) this.g;
        int iA = (int) this.f.a();
        ypVar.getClass();
        y45.j(progressBar, "progressBar");
        progressBar.setMax(i);
        progressBar.setVisibility(0);
        progressBar.setProgress(iA);
        long jMax = Math.max(0L, this.g - this.f.a());
        if (jMax != 0) {
            this.c.a(this.a);
            this.h.a(this.j);
            this.h.a(jMax, this.i);
            this.e.a(cw.d);
        }
    }

    @Override
    public final View d() {
        return this.a;
    }

    @Override
    public final void invalidate() {
        this.h.invalidate();
    }

    @Override
    public final void a() {
        this.h.resume();
    }
}
