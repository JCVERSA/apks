package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.pm1;
import defpackage.y45;

public final class pm1 implements nd0 {
    private final md0 a;
    private final Handler b;
    private vs c;

    public pm1(md0 md0Var) {
        this(md0Var, new Handler(Looper.getMainLooper()));
    }

    public static final void a(pm1 pm1Var) {
        y45.j(pm1Var, "this$0");
        vs vsVar = pm1Var.c;
        if (vsVar != null) {
            vsVar.onAdClicked();
        }
    }

    public static final void b(pm1 pm1Var) {
        y45.j(pm1Var, "this$0");
        vs vsVar = pm1Var.c;
        if (vsVar != null) {
            vsVar.onAdDismissed();
        }
    }

    public static final void c(pm1 pm1Var) {
        y45.j(pm1Var, "this$0");
        vs vsVar = pm1Var.c;
        if (vsVar != null) {
            vsVar.onAdShown();
        }
        md0 md0Var = pm1Var.a;
        if (md0Var != null) {
            md0Var.onAdShown();
        }
    }

    @Override
    public final void onAdClicked() {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                pm1.a(this.b);
            }
        });
    }

    @Override
    public final void onAdDismissed() {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                pm1.b(this.b);
            }
        });
    }

    @Override
    public final void onAdShown() {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                pm1.c(this.b);
            }
        });
    }

    public pm1(md0 md0Var, Handler handler) {
        y45.j(handler, "handler");
        this.a = md0Var;
        this.b = handler;
    }

    public final void a(final q6 q6Var) {
        y45.j(q6Var, "adPresentationError");
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                pm1.a(q6Var, this);
            }
        });
    }

    public static final void a(q6 q6Var, pm1 pm1Var) {
        y45.j(q6Var, "$adPresentationError");
        y45.j(pm1Var, "this$0");
        ky1 ky1Var = new ky1(q6Var.a());
        vs vsVar = pm1Var.c;
        if (vsVar != null) {
            vsVar.a(ky1Var);
        }
    }

    @Override
    public final void a(final t4 t4Var) {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                pm1.a(this.b, t4Var);
            }
        });
    }

    public static final void a(pm1 pm1Var, t4 t4Var) {
        y45.j(pm1Var, "this$0");
        vs vsVar = pm1Var.c;
        if (vsVar != null) {
            vsVar.a(t4Var);
        }
    }

    public final void a(ql2 ql2Var) {
        this.c = ql2Var;
    }
}
