package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;

public final class C2630j4 {
    public final C2606i4 a;
    public volatile G9 b;
    public volatile G9 c;

    public C2630j4() {
        this(new C2606i4());
    }

    public final IHandlerExecutor a() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.a.getClass();
                        HandlerThreadC2613ib handlerThreadC2613ibA = G9.a("IAA-CDE");
                        this.b = new G9(handlerThreadC2613ibA, handlerThreadC2613ibA.getLooper(), new Handler(handlerThreadC2613ibA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }

    public final ICommonExecutor b() {
        if (this.c == null) {
            synchronized (this) {
                try {
                    if (this.c == null) {
                        this.a.getClass();
                        HandlerThreadC2613ib handlerThreadC2613ibA = G9.a("IAA-CRS");
                        this.c = new G9(handlerThreadC2613ibA, handlerThreadC2613ibA.getLooper(), new Handler(handlerThreadC2613ibA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }

    public C2630j4(C2606i4 c2606i4) {
        this.a = c2606i4;
    }
}
