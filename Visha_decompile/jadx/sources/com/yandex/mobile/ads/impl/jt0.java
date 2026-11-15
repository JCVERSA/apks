package com.yandex.mobile.ads.impl;

import android.os.Handler;
import defpackage.y45;

public final class jt0 {
    private final Handler a;

    public final class a implements Runnable {
        private final long b;
        private final yn c;
        final jt0 d;

        public a(jt0 jt0Var, long j, h31 h31Var) {
            y45.j(h31Var, "periodicJob");
            this.d = jt0Var;
            this.b = j;
            this.c = h31Var;
        }

        @Override
        public final void run() {
            if (this.c.b()) {
                this.c.run();
                this.d.a.postDelayed(this, this.b);
            }
        }
    }

    public jt0(Handler handler) {
        y45.j(handler, "mainThreadHandler");
        this.a = handler;
    }

    public final void a() {
        this.a.removeCallbacksAndMessages(null);
    }

    public final void a(long j, h31 h31Var) {
        y45.j(h31Var, "periodicJob");
        if (h31Var.b()) {
            this.a.postDelayed(new a(this, j, h31Var), j);
        }
    }
}
