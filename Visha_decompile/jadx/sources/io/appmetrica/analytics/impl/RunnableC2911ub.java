package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.lang.ref.WeakReference;
import java.util.Set;

public final class RunnableC2911ub implements Runnable {
    public final WeakReference a;
    public final WeakReference b;

    public RunnableC2911ub(Handler handler, T2 t2) {
        this.a = new WeakReference(handler);
        this.b = new WeakReference(t2);
    }

    @Override
    public final void run() {
        Handler handler = (Handler) this.a.get();
        T2 t2 = (T2) this.b.get();
        if (handler == null || t2 == null) {
            return;
        }
        boolean zF = t2.b.f();
        if (!zF) {
            PublicLogger publicLogger = t2.c;
            Set set = C9.a;
            EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
            C2506e4 c2506e4 = new C2506e4("", "", 3, 0, publicLogger);
            C2744ni c2744ni = t2.h;
            C2992xh c2992xh = t2.b;
            c2744ni.getClass();
            c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
        }
        if (zF) {
            return;
        }
        C2886tb.a(handler, t2, this);
    }
}
