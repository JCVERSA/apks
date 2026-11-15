package com.cloud.config.utils;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.concurrent.ThreadsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/util/concurrent/ThreadPoolExecutor;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class ExecutorUtils$ioE$2 extends Lambda implements Function0<ThreadPoolExecutor> {
    public static final ExecutorUtils$ioE$2 INSTANCE = new ExecutorUtils$ioE$2();

    ExecutorUtils$ioE$2() {
        super(0);
    }

    public static final Thread m214invoke$lambda0(final Runnable runnable) {
        return ThreadsKt.b(false, false, null, Intrinsics.q("IO ", Integer.valueOf(ExecutorUtils.ioA.incrementAndGet())), 5, new Function0<Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m215invoke();
                return Unit.f64096a;
            }

            public final void m215invoke() {
                runnable.run();
            }
        }, 6, null);
    }

    @Override
    public final ThreadPoolExecutor invoke() {
        return new ThreadPoolExecutor(1, ExecutorUtils.CPU_CORE * 2, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() {
            @Override
            public final Thread newThread(Runnable runnable) {
                return ExecutorUtils$ioE$2.m214invoke$lambda0(runnable);
            }
        }, new ThreadPoolExecutor.DiscardPolicy());
    }
}
