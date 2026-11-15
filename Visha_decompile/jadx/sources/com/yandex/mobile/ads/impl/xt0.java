package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.xt0;
import defpackage.y45;

public final class xt0 implements ot0 {
    private final Handler a;
    private ot0 b;

    public xt0() {
        this(new Handler(Looper.getMainLooper()));
    }

    public static final void a(xt0 xt0Var) {
        y45.j(xt0Var, "this$0");
        ot0 ot0Var = xt0Var.b;
        if (ot0Var != null) {
            ot0Var.onInstreamAdBreakCompleted();
        }
    }

    public static final void b(xt0 xt0Var) {
        y45.j(xt0Var, "this$0");
        ot0 ot0Var = xt0Var.b;
        if (ot0Var != null) {
            ot0Var.onInstreamAdBreakPrepared();
        }
    }

    public static final void c(xt0 xt0Var) {
        y45.j(xt0Var, "this$0");
        ot0 ot0Var = xt0Var.b;
        if (ot0Var != null) {
            ot0Var.onInstreamAdBreakStarted();
        }
    }

    @Override
    public final void onInstreamAdBreakCompleted() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                xt0.a(this.b);
            }
        });
    }

    @Override
    public final void onInstreamAdBreakError(final String str) {
        y45.j(str, "reason");
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                xt0.a(this.b, str);
            }
        });
    }

    @Override
    public final void onInstreamAdBreakPrepared() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                xt0.b(this.b);
            }
        });
    }

    @Override
    public final void onInstreamAdBreakStarted() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                xt0.c(this.b);
            }
        });
    }

    public xt0(Handler handler) {
        y45.j(handler, "handler");
        this.a = handler;
    }

    public static final void a(xt0 xt0Var, String str) {
        y45.j(xt0Var, "this$0");
        y45.j(str, "$reason");
        ot0 ot0Var = xt0Var.b;
        if (ot0Var != null) {
            ot0Var.onInstreamAdBreakError(str);
        }
    }

    public final void a(cm2 cm2Var) {
        this.b = cm2Var;
    }
}
