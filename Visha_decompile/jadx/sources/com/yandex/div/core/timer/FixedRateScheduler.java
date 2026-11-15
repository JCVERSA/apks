package com.yandex.div.core.timer;

import android.os.Handler;
import android.os.Looper;
import defpackage.c74;
import defpackage.y45;

public final class FixedRateScheduler {
    public final Handler a = new Handler(Looper.getMainLooper());

    public final void b() {
        this.a.removeCallbacksAndMessages(null);
    }

    public final void c(long j, final long j2, final c74 c74Var) {
        y45.j(c74Var, "onTick");
        this.a.postDelayed(new Runnable() {
            @Override
            public void run() {
                this.this$0.a.postDelayed(this, j2);
                c74Var.invoke();
            }
        }, j);
    }
}
