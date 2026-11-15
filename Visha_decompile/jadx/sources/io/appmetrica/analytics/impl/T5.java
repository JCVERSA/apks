package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;
import io.appmetrica.analytics.coreutils.internal.services.WaitForActivationDelayBarrier;
import io.appmetrica.analytics.impl.T5;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class T5 implements Runnable {
    public final List a;
    public final IHandlerExecutor b = C2910ua.j().w().a();
    public final WaitForActivationDelayBarrier c = C2910ua.j().a();

    public T5(List list) {
        this.a = list;
    }

    public static final void a(T5 t5) {
        Iterator it = t5.a.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    @Override
    public final void run() {
        this.c.subscribe(TimeUnit.SECONDS.toMillis(10L), this.b, new ActivationBarrierCallback() {
            @Override
            public final void onWaitFinished() {
                T5.a(this.a);
            }
        });
    }
}
