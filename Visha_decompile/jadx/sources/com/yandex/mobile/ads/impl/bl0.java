package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.FrameLayout;
import defpackage.y45;
import java.util.List;

public final class bl0 {
    private final cl0 a;
    private final Handler b;
    private final fi2 c;
    private final jp0 d;

    public final class a implements Runnable {
        private final g71 b;
        final bl0 c;

        public a(bl0 bl0Var, g71 g71Var) {
            y45.j(g71Var, "nativeAdViewAdapter");
            this.c = bl0Var;
            this.b = g71Var;
        }

        @Override
        public final void run() {
            View viewE = this.b.e();
            if (viewE instanceof FrameLayout) {
                jp0 jp0Var = this.c.d;
                FrameLayout frameLayout = (FrameLayout) viewE;
                Context context = frameLayout.getContext();
                y45.i(context, "getContext(...)");
                this.c.a.a(jp0Var.a(context), frameLayout);
                this.c.b.postDelayed(new a(this.c, this.b), 300L);
            }
        }
    }

    public bl0(na1 na1Var, List list) {
        this(na1Var, list, new cl0(), new Handler(Looper.getMainLooper()), new fi2(), kp0.a(na1Var, list));
    }

    public final void a(g71 g71Var) {
        y45.j(g71Var, "nativeAdViewAdapter");
        this.b.removeCallbacksAndMessages(null);
        View viewE = g71Var.e();
        if (viewE instanceof FrameLayout) {
            this.a.a((FrameLayout) viewE);
        }
    }

    public bl0(na1 na1Var, List<ey1> list, cl0 cl0Var, Handler handler, fi2 fi2Var, jp0 jp0Var) {
        y45.j(na1Var, "nativeValidator");
        y45.j(list, "showNotices");
        y45.j(cl0Var, "indicatorPresenter");
        y45.j(handler, "handler");
        y45.j(fi2Var, "availabilityChecker");
        y45.j(jp0Var, "integrationValidator");
        this.a = cl0Var;
        this.b = handler;
        this.c = fi2Var;
        this.d = jp0Var;
    }

    public final void a(Context context, g71 g71Var) {
        y45.j(context, "context");
        y45.j(g71Var, "nativeAdViewAdapter");
        this.c.getClass();
        y45.j(context, "context");
        int i = pw1.l;
        pw1 pw1VarA = pw1.a.a();
        ju1 ju1VarA = pw1VarA.a(context);
        Boolean boolC0 = ju1VarA != null ? ju1VarA.C0() : null;
        boolean zH = pw1VarA.h();
        boolean zI = pw1VarA.i();
        if (boolC0 != null) {
            if (!boolC0.booleanValue()) {
                return;
            }
        } else if ((!zH || !pa.a(context)) && !zI) {
            return;
        }
        this.b.post(new a(this, g71Var));
    }

    public final void a() {
        this.b.removeCallbacksAndMessages(null);
    }
}
