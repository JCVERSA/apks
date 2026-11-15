package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import defpackage.y45;

public final class it0 {
    private final Handler a = new Handler(Looper.getMainLooper());

    public final void a() {
        this.a.removeCallbacksAndMessages(null);
    }

    public final void a(Runnable runnable) {
        y45.j(runnable, "runnable");
        this.a.post(runnable);
    }

    public final void a(du1.a aVar) {
        y45.j(aVar, "runnable");
        this.a.postDelayed(aVar, 50L);
    }
}
