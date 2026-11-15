package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import defpackage.y45;

public final class gd2 {
    private final wc2<?> a;
    private final dd2 b;
    private final Handler c;
    private boolean d;

    public final class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            long adPosition = gd2.this.a.getAdPosition();
            gd2.this.b.a(gd2.this.a.b(), adPosition);
            if (gd2.this.d) {
                gd2.this.c.postDelayed(this, 200L);
            }
        }
    }

    public gd2(wc2 wc2Var, dd2 dd2Var) {
        this(wc2Var, dd2Var, new Handler(Looper.getMainLooper()));
    }

    public final void a() {
        if (this.d) {
            return;
        }
        this.d = true;
        this.b.a();
        this.c.post(new a());
    }

    public final void b() {
        if (this.d) {
            this.b.b();
            this.c.removeCallbacksAndMessages(null);
            this.d = false;
        }
    }

    public gd2(wc2<?> wc2Var, dd2 dd2Var, Handler handler) {
        y45.j(wc2Var, "videoAdPlayer");
        y45.j(dd2Var, "videoAdProgressEventsObservable");
        y45.j(handler, "handler");
        this.a = wc2Var;
        this.b = dd2Var;
        this.c = handler;
    }
}
