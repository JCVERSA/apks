package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import defpackage.y45;

public final class bd2 {
    private final qd2 a;
    private final a b;
    private final Handler c;
    private boolean d;
    private boolean e;

    public interface a {
        void b();
    }

    public final class b implements Runnable {
        public b() {
        }

        @Override
        public final void run() {
            if (bd2.this.d || !bd2.this.a.a(pd2.d)) {
                bd2.this.c.postDelayed(this, 200L);
                return;
            }
            bd2.this.b.b();
            bd2.this.d = true;
            bd2.this.b();
        }
    }

    public bd2(qd2 qd2Var, a aVar) {
        y45.j(qd2Var, "statusController");
        y45.j(aVar, "preparedListener");
        this.a = qd2Var;
        this.b = aVar;
        this.c = new Handler(Looper.getMainLooper());
    }

    public final void a() {
        if (this.e || this.d) {
            return;
        }
        this.e = true;
        this.c.post(new b());
    }

    public final void b() {
        this.c.removeCallbacksAndMessages(null);
        this.e = false;
    }
}
