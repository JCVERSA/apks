package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import defpackage.y45;

public final class md2 {
    private final uf2 a;
    private final a b;
    private final Handler c;
    private boolean d;
    private boolean e;

    public interface a {
        void a();
    }

    public final class b implements Runnable {
        public b() {
        }

        @Override
        public final void run() {
            if (md2.this.d || !md2.this.a.a()) {
                md2.this.c.postDelayed(this, 200L);
                return;
            }
            md2.this.b.a();
            md2.this.d = true;
            md2.this.b();
        }
    }

    public md2(uf2 uf2Var, a aVar) {
        y45.j(uf2Var, "renderValidator");
        y45.j(aVar, "renderingStartListener");
        this.a = uf2Var;
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
