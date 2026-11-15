package defpackage;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

public final class uef extends ScheduledThreadPoolExecutor {
    public uef(int i, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }
}
