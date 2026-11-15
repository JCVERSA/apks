package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.ThreadFactory;

public final class d extends Scheduler {

    private static final RxThreadFactory f62520d = new RxThreadFactory("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx3.newthread-priority", 5).intValue())));

    final ThreadFactory f62521c;

    public d() {
        this(f62520d);
    }

    @Override
    public Scheduler.Worker c() {
        return new e(this.f62521c);
    }

    public d(ThreadFactory threadFactory) {
        this.f62521c = threadFactory;
    }
}
