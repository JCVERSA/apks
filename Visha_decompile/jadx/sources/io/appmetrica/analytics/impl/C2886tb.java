package io.appmetrica.analytics.impl;

import android.os.Handler;
import android.os.SystemClock;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;

public final class C2886tb {
    public final Handler a;
    public final T2 b;
    public final RunnableC2911ub c;

    public C2886tb(Handler handler, T2 t2) {
        this.a = handler;
        this.b = t2;
        this.c = new RunnableC2911ub(handler, t2);
    }

    public static void a(Handler handler, T2 t2, Runnable runnable) {
        handler.removeCallbacks(runnable, t2.b.b.getApiKey());
        handler.postAtTime(runnable, t2.b.b.getApiKey(), SystemClock.uptimeMillis() + ((long) (((Integer) WrapUtils.getOrDefault(t2.b.b.getSessionTimeout(), 10)).intValue() * 500)));
    }
}
