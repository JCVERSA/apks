package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public final class S1 implements Thread.UncaughtExceptionHandler {
    public static final AtomicBoolean e = new AtomicBoolean();
    public final Ma a;
    public final C2688lc b = C2879t4.i().l();
    public final C2981x6 c = new C2981x6();
    public final C2425an d = new C2425an();

    public S1(C2906u6 c2906u6) {
        this.a = c2906u6;
    }

    @Override
    public final void uncaughtException(Thread thread, Throwable th) {
        StackTraceElement[] stackTraceElementArrB;
        try {
            e.set(true);
            Ma ma = this.a;
            Tm tmApply = this.c.apply(thread);
            C2425an c2425an = this.d;
            Thread threadA = c2425an.a.a();
            ArrayList arrayListA = c2425an.a(threadA, thread);
            if (thread != threadA) {
                try {
                    stackTraceElementArrB = c2425an.a.b();
                    if (stackTraceElementArrB == null) {
                        try {
                            stackTraceElementArrB = threadA.getStackTrace();
                        } catch (SecurityException unused) {
                        }
                    }
                } catch (SecurityException unused2) {
                    stackTraceElementArrB = null;
                }
                arrayListA.add(0, (Tm) c2425an.b.apply(threadA, stackTraceElementArrB));
            }
            ma.a(th, new S(tmApply, arrayListA, this.b.b()));
        } catch (Throwable th2) {
            LoggerStorage.getMainPublicOrAnonymousLogger().error(th2, th2.getMessage(), new Object[0]);
        }
    }
}
