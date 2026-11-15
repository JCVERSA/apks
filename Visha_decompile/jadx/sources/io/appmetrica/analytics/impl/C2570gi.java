package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.util.HashMap;

public final class C2570gi {
    public final HashMap a = new HashMap();
    public final C2801q0 b;

    public C2570gi(C2801q0 c2801q0) {
        this.b = c2801q0;
    }

    public static C2570gi a() {
        return AbstractC2545fi.a;
    }

    public final Yh a(Context context, String str) {
        Yh yh = (Yh) this.a.get(str);
        if (yh == null) {
            synchronized (this.a) {
                try {
                    yh = (Yh) this.a.get(str);
                    if (yh == null) {
                        IHandlerExecutor iHandlerExecutorA = C2879t4.i().c.a();
                        this.b.getClass();
                        if (C2776p0.e == null) {
                            ((G9) iHandlerExecutorA).b.post(new RunnableC2520ei(this, context));
                        }
                        yh = new Yh(context.getApplicationContext(), str, new C2801q0());
                        this.a.put(str, yh);
                        yh.c(str);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return yh;
    }
}
