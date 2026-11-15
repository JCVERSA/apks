package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.impl.C2579h2;

public final class C2579h2 {
    public final C2713mc a;
    public final ICommonExecutor b;
    public final long c;
    public boolean d = true;
    public final Runnable e = new Runnable() {
        @Override
        public final void run() {
            C2579h2.a(this.b);
        }
    };

    public C2579h2(C2713mc c2713mc, IHandlerExecutor iHandlerExecutor, long j) {
        this.a = c2713mc;
        this.b = iHandlerExecutor;
        this.c = j;
    }

    public static final void a(C2579h2 c2579h2) {
        C2738nc c2738nc = c2579h2.a.a;
        C2744ni c2744ni = c2738nc.h;
        c2744ni.c.a(c2738nc.b.a);
    }
}
