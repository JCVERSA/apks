package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import io.appmetrica.analytics.modulesapi.internal.common.ExecutorProvider;
import java.util.concurrent.Executor;

public final class F9 implements ExecutorProvider {
    public final Uj a;
    public final IHandlerExecutor b;

    public F9() {
        Uj ujW = C2910ua.j().w();
        this.a = ujW;
        this.b = ujW.c();
    }

    @Override
    public final IHandlerExecutor getDefaultExecutor() {
        return this.a.a();
    }

    @Override
    public final InterruptionSafeThread getInterruptionThread(String str, String str2, Runnable runnable) {
        return new InterruptionSafeThread(runnable, (str + '-' + str2) + "-" + ThreadFactoryC3013yd.a.incrementAndGet());
    }

    @Override
    public final IHandlerExecutor getModuleExecutor() {
        return this.b;
    }

    @Override
    public final IHandlerExecutor getSupportIOExecutor() {
        Uj uj = this.a;
        if (uj.f == null) {
            synchronized (uj) {
                try {
                    if (uj.f == null) {
                        uj.a.getClass();
                        HandlerThreadC2613ib handlerThreadC2613ibA = G9.a("IAA-SIO");
                        uj.f = new G9(handlerThreadC2613ibA, handlerThreadC2613ibA.getLooper(), new Handler(handlerThreadC2613ibA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return uj.f;
    }

    @Override
    public final Executor getUiExecutor() {
        return this.a.f();
    }
}
