package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

public final class mqh implements fyi {
    public final qyi a;

    public mqh(qyi qyiVar) {
        this.a = qyiVar;
    }

    @Override
    public final Object zzb() {
        ThreadFactory threadFactory = (ThreadFactory) this.a.zzb();
        ozh.a();
        ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, threadFactory));
        pyi.b(scheduledExecutorServiceUnconfigurableScheduledExecutorService);
        return scheduledExecutorServiceUnconfigurableScheduledExecutorService;
    }
}
