package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import defpackage.y45;

public final class qo1 {
    private final u7 a;
    private final b b;
    private final Handler c;
    private boolean d;

    public final class a implements Runnable {
        private final u7 b;
        final qo1 c;

        public a(qo1 qo1Var, u7 u7Var) {
            y45.j(u7Var, "adRenderingValidator");
            this.c = qo1Var;
            this.b = u7Var;
        }

        @Override
        public final void run() {
            if (this.c.d) {
                return;
            }
            if (this.b.a()) {
                this.c.d = true;
                this.c.b.a();
            } else {
                this.c.c.postDelayed(new a(this.c, this.b), 300L);
            }
        }
    }

    public interface b {
        void a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public qo1(u7 u7Var, b bVar) {
        this(u7Var, bVar, new Handler(Looper.getMainLooper()));
        y45.j(u7Var, "adRenderValidator");
        y45.j(bVar, "adRenderedListener");
    }

    public final void a() {
        this.c.post(new a(this, this.a));
    }

    public final void b() {
        this.c.removeCallbacksAndMessages(null);
    }

    public qo1(u7 u7Var, b bVar, Handler handler) {
        y45.j(u7Var, "adRenderValidator");
        y45.j(bVar, "adRenderedListener");
        y45.j(handler, "handler");
        this.a = u7Var;
        this.b = bVar;
        this.c = handler;
    }
}
