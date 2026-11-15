package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.tm1;
import defpackage.y45;

public final class tm1 implements nd0, ps1 {
    private final md0 a;
    private final Handler b;
    private hu c;

    public tm1(md0 md0Var) {
        this(md0Var, new Handler(Looper.getMainLooper()));
    }

    public static final void a(tm1 tm1Var) {
        y45.j(tm1Var, "this$0");
        hu huVar = tm1Var.c;
        if (huVar != null) {
            huVar.onAdClicked();
        }
    }

    public static final void b(tm1 tm1Var) {
        y45.j(tm1Var, "this$0");
        hu huVar = tm1Var.c;
        if (huVar != null) {
            huVar.onAdDismissed();
        }
    }

    public static final void c(tm1 tm1Var) {
        y45.j(tm1Var, "this$0");
        hu huVar = tm1Var.c;
        if (huVar != null) {
            huVar.onAdShown();
        }
        md0 md0Var = tm1Var.a;
        if (md0Var != null) {
            md0Var.onAdShown();
        }
    }

    @Override
    public final void onAdClicked() {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                tm1.a(this.b);
            }
        });
    }

    @Override
    public final void onAdDismissed() {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                tm1.b(this.b);
            }
        });
    }

    @Override
    public final void onAdShown() {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                tm1.c(this.b);
            }
        });
    }

    public tm1(md0 md0Var, Handler handler) {
        y45.j(handler, "handler");
        this.a = md0Var;
        this.b = handler;
    }

    public final void a(final q6 q6Var) {
        y45.j(q6Var, "adPresentationError");
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                tm1.a(q6Var, this);
            }
        });
    }

    public static final void a(q6 q6Var, tm1 tm1Var) {
        y45.j(q6Var, "$adPresentationError");
        y45.j(tm1Var, "this$0");
        ky1 ky1Var = new ky1(q6Var.a());
        hu huVar = tm1Var.c;
        if (huVar != null) {
            huVar.a(ky1Var);
        }
    }

    @Override
    public final void a(final t4 t4Var) {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                tm1.a(this.b, t4Var);
            }
        });
    }

    public static final void a(tm1 tm1Var, t4 t4Var) {
        y45.j(tm1Var, "this$0");
        hu huVar = tm1Var.c;
        if (huVar != null) {
            huVar.a(t4Var);
        }
    }

    @Override
    public final void a(final ow1 ow1Var) {
        y45.j(ow1Var, "reward");
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                tm1.a(this.b, ow1Var);
            }
        });
    }

    public static final void a(tm1 tm1Var, vr1 vr1Var) {
        y45.j(tm1Var, "this$0");
        y45.j(vr1Var, "$reward");
        hu huVar = tm1Var.c;
        if (huVar != null) {
            huVar.a(vr1Var);
        }
    }

    public final void a(cn2 cn2Var) {
        this.c = cn2Var;
    }
}
