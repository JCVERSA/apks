package com.cloud.tupdate.utils;

import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.concurrent.ThreadsKt;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/util/concurrent/ThreadPoolExecutor;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
public final class ExecutorUtils$newE$2 extends Lambda implements c74 {
    public static final ExecutorUtils$newE$2 INSTANCE = new ExecutorUtils$newE$2();

    public ExecutorUtils$newE$2() {
        super(0);
    }

    public static final Thread b(final Runnable runnable) {
        return ThreadsKt.b(false, false, null, y45.s("NEW ", Integer.valueOf(ExecutorUtils.f.incrementAndGet())), 5, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m73invoke();
                return zfb.a;
            }

            public final void m73invoke() {
                runnable.run();
            }
        }, 6, null);
    }

    @Override
    public final ThreadPoolExecutor invoke() {
        return new ThreadPoolExecutor(1, ExecutorUtils.a, 0L, TimeUnit.NANOSECONDS, new SynchronousQueue(), new ThreadFactory() {
            @Override
            public final Thread newThread(Runnable runnable) {
                return ExecutorUtils$newE$2.b(runnable);
            }
        }, new ThreadPoolExecutor.DiscardPolicy());
    }
}
