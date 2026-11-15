package com.yandex.mobile.ads.impl;

import android.os.Handler;
import com.yandex.mobile.ads.impl.gg1;
import defpackage.y45;

public final class gg1 {
    private final eh0 a;
    private final Handler b;
    private final dz1 c;
    private final r7 d;
    private boolean e;

    public gg1(eh0 eh0Var, Handler handler, dz1 dz1Var, r7 r7Var) {
        y45.j(eh0Var, "htmlWebViewRenderer");
        y45.j(handler, "handler");
        y45.j(dz1Var, "singleTimeRunner");
        y45.j(r7Var, "adRenderWaitBreaker");
        this.a = eh0Var;
        this.b = handler;
        this.c = dz1Var;
        this.d = r7Var;
    }

    public final void a() {
        this.b.removeCallbacksAndMessages(null);
        this.d.a(null);
    }

    public final void b() {
        if (this.e) {
            return;
        }
        this.c.a(new Runnable() {
            @Override
            public final void run() {
                gg1.a(this.b);
            }
        });
    }

    public final void a(int i, String str) {
        this.e = true;
        this.b.removeCallbacks(this.d);
        this.b.post(new wj2(i, str, this.a));
    }

    public static final void a(gg1 gg1Var) {
        y45.j(gg1Var, "this$0");
        sp0.d(new Object[0]);
        gg1Var.b.postDelayed(gg1Var.d, 10000L);
    }

    public final void a(dh0 dh0Var) {
        this.d.a(dh0Var);
    }
}
