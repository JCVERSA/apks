package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.rm1;
import defpackage.y45;

public final class rm1 implements nd0 {
    private final md0 a;
    private final Handler b;
    private ot c;

    public rm1(md0 md0Var) {
        this(md0Var, new Handler(Looper.getMainLooper()));
    }

    public static final void a(rm1 rm1Var) {
        y45.j(rm1Var, "this$0");
        ot otVar = rm1Var.c;
        if (otVar != null) {
            otVar.onAdClicked();
        }
    }

    public static final void b(rm1 rm1Var) {
        y45.j(rm1Var, "this$0");
        ot otVar = rm1Var.c;
        if (otVar != null) {
            otVar.onAdDismissed();
        }
    }

    public static final void c(rm1 rm1Var) {
        y45.j(rm1Var, "this$0");
        ot otVar = rm1Var.c;
        if (otVar != null) {
            otVar.onAdShown();
        }
        md0 md0Var = rm1Var.a;
        if (md0Var != null) {
            md0Var.onAdShown();
        }
    }

    @Override
    public final void onAdClicked() {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                rm1.a(this.b);
            }
        });
    }

    @Override
    public final void onAdDismissed() {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                rm1.b(this.b);
            }
        });
    }

    @Override
    public final void onAdShown() {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                rm1.c(this.b);
            }
        });
    }

    public rm1(md0 md0Var, Handler handler) {
        y45.j(handler, "handler");
        this.a = md0Var;
        this.b = handler;
    }

    public final void a(final q6 q6Var) {
        y45.j(q6Var, "adPresentationError");
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                rm1.a(q6Var, this);
            }
        });
    }

    public static final void a(q6 q6Var, rm1 rm1Var) {
        y45.j(q6Var, "$adPresentationError");
        y45.j(rm1Var, "this$0");
        ky1 ky1Var = new ky1(q6Var.a());
        ot otVar = rm1Var.c;
        if (otVar != null) {
            otVar.a(ky1Var);
        }
    }

    @Override
    public final void a(final t4 t4Var) {
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                rm1.a(this.b, t4Var);
            }
        });
    }

    public static final void a(rm1 rm1Var, t4 t4Var) {
        y45.j(rm1Var, "this$0");
        ot otVar = rm1Var.c;
        if (otVar != null) {
            otVar.a(t4Var);
        }
    }

    public final void a(nm2 nm2Var) {
        this.c = nm2Var;
    }
}
