package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class qdf implements ThreadFactory {
    public final AtomicInteger b = new AtomicInteger(1);

    public qdf(rdf rdfVar) {
    }

    @Override
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AdWorker(SCION_TASK_EXECUTOR) #" + this.b.getAndIncrement());
    }
}
