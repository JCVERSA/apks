package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.yandex.mobile.ads.impl.y51;
import defpackage.y45;
import defpackage.zfb;

public final class y51 {
    private static final Object c = new Object();
    private static volatile y51 d;
    public static final int e = 0;
    private final Handler a;
    private boolean b;

    public static final class a {
        public static y51 a() {
            if (y51.d == null) {
                synchronized (y51.c) {
                    try {
                        if (y51.d == null) {
                            y51.d = new y51();
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            y51 y51Var = y51.d;
            if (y51Var != null) {
                return y51Var;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    public y51() {
        this(new Handler(Looper.getMainLooper()));
    }

    private final void a(final View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (!this.b) {
                view.setAlpha(view.getAlpha() / 2);
                this.b = true;
            }
            this.a.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    y51.a(this.b, view);
                }
            }, 100L);
        }
    }

    public final void b(View view, MotionEvent motionEvent) {
        y45.j(view, "view");
        y45.j(motionEvent, "motionEvent");
        if ((view instanceof TextView) || (view instanceof mn1)) {
            a(view, motionEvent);
        }
    }

    private y51(Handler handler) {
        this.a = handler;
    }

    public static final void a(y51 y51Var, View view) {
        y45.j(y51Var, "this$0");
        y45.j(view, "$view");
        if (y51Var.b) {
            view.setAlpha(view.getAlpha() * 2);
            y51Var.b = false;
        }
    }
}
