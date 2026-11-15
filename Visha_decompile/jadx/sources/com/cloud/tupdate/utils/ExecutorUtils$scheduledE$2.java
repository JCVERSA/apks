package com.cloud.tupdate.utils;

import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.Metadata;
import kotlin.concurrent.ThreadsKt;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
public final class ExecutorUtils$scheduledE$2 extends Lambda implements c74 {
    public static final ExecutorUtils$scheduledE$2 INSTANCE = new ExecutorUtils$scheduledE$2();

    public ExecutorUtils$scheduledE$2() {
        super(0);
    }

    public static final Thread b(final Runnable runnable) {
        return ThreadsKt.b(false, false, null, y45.s("SCHEDULED ", Integer.valueOf(ExecutorUtils.i.incrementAndGet())), 1, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m74invoke();
                return zfb.a;
            }

            public final void m74invoke() {
                runnable.run();
            }
        }, 6, null);
    }

    @Override
    public final ScheduledThreadPoolExecutor invoke() {
        return new ScheduledThreadPoolExecutor(1, new ThreadFactory() {
            @Override
            public final Thread newThread(Runnable runnable) {
                return ExecutorUtils$scheduledE$2.b(runnable);
            }
        }, new ThreadPoolExecutor.DiscardPolicy());
    }
}
