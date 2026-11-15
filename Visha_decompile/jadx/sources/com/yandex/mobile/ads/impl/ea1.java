package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class ea1 {
    private final zr1 a;
    private final yc0 b;
    private View c;

    public final class a implements yl1 {
        public a() {
        }

        @Override
        public final void a(long j, long j2) {
            View view = ea1.this.c;
            if (view != null) {
                ea1.this.a.a(view, j, j2);
            }
        }

        @Override
        public final void a() {
            View view = ea1.this.c;
            if (view == null) {
                return;
            }
            view.setVisibility(8);
        }
    }

    public ea1(o52 o52Var, n91 n91Var, f52 f52Var) {
        this(o52Var, n91Var, f52Var, new as1(), new zr1(o52Var));
    }

    public final void c() {
        yc0 yc0Var = this.b;
        if (yc0Var != null) {
            yc0Var.resume();
        }
    }

    public final void a() {
        this.c = null;
        yc0 yc0Var = this.b;
        if (yc0Var != null) {
            yc0Var.invalidate();
        }
    }

    public final void b() {
        yc0 yc0Var = this.b;
        if (yc0Var != null) {
            yc0Var.pause();
        }
    }

    public ea1(o52 o52Var, n91 n91Var, f52 f52Var, as1 as1Var, zr1 zr1Var) {
        y45.j(o52Var, "timerViewProvider");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(as1Var, "rewardViewControllerProvider");
        y45.j(zr1Var, "rewardTimerViewController");
        this.a = zr1Var;
        a aVar = new a();
        as1Var.getClass();
        this.b = as1.a(aVar, n91Var, f52Var);
    }

    public final void a(View view) {
        this.c = view;
        yc0 yc0Var = this.b;
        if (yc0Var != null) {
            yc0Var.start();
        }
    }
}
