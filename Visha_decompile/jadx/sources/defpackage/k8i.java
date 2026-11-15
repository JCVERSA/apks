package defpackage;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class k8i extends t7i implements f8i {
    public final ScheduledFuture c;

    public k8i(im5 im5Var, ScheduledFuture scheduledFuture) {
        super(im5Var);
        this.c = scheduledFuture;
    }

    @Override
    public final boolean cancel(boolean z) {
        boolean zCancel = d().cancel(z);
        if (zCancel) {
            this.c.cancel(z);
        }
        return zCancel;
    }

    @Override
    public final int compareTo(Delayed delayed) {
        return this.c.compareTo(delayed);
    }

    @Override
    public final long getDelay(TimeUnit timeUnit) {
        return this.c.getDelay(timeUnit);
    }
}
