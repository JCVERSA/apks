package com.yandex.mobile.ads.impl;

import android.os.Handler;
import defpackage.y45;

public final class rf2 {
    private final gf2 a;
    private final Handler b;
    private zl1 c;
    private boolean d;

    public final class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            long jC = rf2.this.a.c();
            zl1 zl1Var = rf2.this.c;
            if (zl1Var != null) {
                zl1Var.a(jC);
            }
            if (rf2.this.d) {
                rf2.this.b.postDelayed(this, 200L);
            }
        }
    }

    public rf2(gf2 gf2Var, Handler handler) {
        y45.j(gf2Var, "videoPlayerController");
        y45.j(handler, "handler");
        this.a = gf2Var;
        this.b = handler;
    }

    public final void a(zl1 zl1Var) {
        this.c = zl1Var;
    }

    public final void b() {
        if (this.d) {
            this.b.removeCallbacksAndMessages(null);
            this.d = false;
        }
    }

    public final void a() {
        if (this.d) {
            return;
        }
        this.d = true;
        this.b.post(new a());
    }
}
