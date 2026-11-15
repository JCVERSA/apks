package io.appmetrica.analytics.impl;

import androidx.annotation.WorkerThread;
import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

public final class Lf implements Jf {
    public final Rf a;

    public Lf(Rf rf) {
        this.a = rf;
    }

    @Override
    @WorkerThread
    public final void a() {
        Rf rf = this.a;
        Ga ga = rf.b;
        Kf kf = new Kf(rf);
        ga.getClass();
        try {
            FutureTask futureTask = new FutureTask(new Fa(ga));
            C2910ua.E.d.a.getClass();
            new InterruptionSafeThread(futureTask, "IAA-SHMSR-" + ThreadFactoryC3013yd.a.incrementAndGet()).start();
            C2468cg c2468cg = (C2468cg) futureTask.get(5L, TimeUnit.SECONDS);
            In.a(ga.b);
            Rf.a(rf, c2468cg, Rf.a(rf));
        } catch (Throwable th) {
            try {
                kf.a(th);
            } finally {
                In.a(ga.b);
            }
        }
    }
}
