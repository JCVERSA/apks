package com.yandex.mobile.ads.impl;

import android.view.ViewTreeObserver;
import defpackage.y45;

public final class du1 implements ViewTreeObserver.OnPreDrawListener {
    private final xi a;
    private final it0 b;
    private final a c;

    public static final class a implements Runnable {
        private final np0 b;

        public a(np0 np0Var) {
            y45.j(np0Var, "adView");
            this.b = np0Var;
        }

        @Override
        public final void run() {
            zg2.a(this.b, false);
        }
    }

    public du1(np0 np0Var, xi xiVar, it0 it0Var, a aVar) {
        y45.j(np0Var, "adView");
        y45.j(xiVar, "contentController");
        y45.j(it0Var, "mainThreadHandler");
        y45.j(aVar, "removePreviousBannerRunnable");
        this.a = xiVar;
        this.b = it0Var;
        this.c = aVar;
    }

    @Override
    public final boolean onPreDraw() {
        sp0.d(new Object[0]);
        this.a.m();
        this.b.a(this.c);
        return true;
    }
}
