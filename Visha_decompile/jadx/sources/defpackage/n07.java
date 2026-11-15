package defpackage;

import io.reactivex.Scheduler;
import io.reactivex.internal.schedulers.RxThreadFactory;
import io.reactivex.internal.schedulers.a;
import java.util.concurrent.ThreadFactory;

public final class n07 extends Scheduler {
    public static final RxThreadFactory d = new RxThreadFactory("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())));
    public final ThreadFactory c;

    public n07() {
        this(d);
    }

    @Override
    public Scheduler.Worker b() {
        return new a(this.c);
    }

    public n07(ThreadFactory threadFactory) {
        this.c = threadFactory;
    }
}
