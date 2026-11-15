package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class lz implements rp {
    private final View a;
    private final op b;
    private final dw c;
    private final long d;
    private final aq e;
    private final mg1 f;

    public static final class a implements og1 {
        private final op a;
        private final dw b;
        private final WeakReference<View> c;

        public a(View view, op opVar, dw dwVar) {
            y45.j(view, "view");
            y45.j(opVar, "closeAppearanceController");
            y45.j(dwVar, "debugEventsReporter");
            this.a = opVar;
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public lz(View view, op opVar, dw dwVar, long j, aq aqVar) {
        this(view, opVar, dwVar, j, aqVar, mg1.a.a(true));
        int i = mg1.a;
    }

    @Override
    public final void a(boolean z) {
    }

    @Override
    public final void b() {
        this.f.pause();
    }

    @Override
    public final void c() {
        a aVar = new a(this.a, this.b, this.c);
        long jMax = (long) Math.max(0.0d, this.d - this.e.a());
        if (jMax == 0) {
            this.b.b(this.a);
            return;
        }
        this.f.a(this.e);
        this.f.a(jMax, aVar);
        this.c.a(cw.d);
    }

    @Override
    public final View d() {
        return this.a;
    }

    @Override
    public final void invalidate() {
        this.f.invalidate();
    }

    @Override
    public final void a() {
        this.f.resume();
    }

    public lz(View view, op opVar, dw dwVar, long j, aq aqVar, mg1 mg1Var) {
        y45.j(view, "closeButton");
        y45.j(opVar, "closeAppearanceController");
        y45.j(dwVar, "debugEventsReporter");
        y45.j(aqVar, "closeTimerProgressIncrementer");
        y45.j(mg1Var, "pausableTimer");
        this.a = view;
        this.b = opVar;
        this.c = dwVar;
        this.d = j;
        this.e = aqVar;
        this.f = mg1Var;
        opVar.a(d());
    }
}
