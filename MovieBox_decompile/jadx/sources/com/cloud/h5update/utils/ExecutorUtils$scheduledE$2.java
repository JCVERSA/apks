package com.cloud.h5update.utils;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.concurrent.ThreadsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class ExecutorUtils$scheduledE$2 extends Lambda implements Function0<ScheduledThreadPoolExecutor> {
    public static final ExecutorUtils$scheduledE$2 INSTANCE = new ExecutorUtils$scheduledE$2();

    ExecutorUtils$scheduledE$2() {
        super(0);
    }

    public static final Thread m228invoke$lambda0(final Runnable runnable) {
        return ThreadsKt.b(false, false, null, "SCHEDULED " + ExecutorUtils.f20672i.incrementAndGet(), 1, new Function0<Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m229invoke();
                return Unit.f64096a;
            }

            public final void m229invoke() {
                runnable.run();
            }
        }, 6, null);
    }

    @Override
    public final ScheduledThreadPoolExecutor invoke() {
        return new ScheduledThreadPoolExecutor(1, new ThreadFactory() {
            @Override
            public final Thread newThread(Runnable runnable) {
                return ExecutorUtils$scheduledE$2.m228invoke$lambda0(runnable);
            }
        }, new ThreadPoolExecutor.DiscardPolicy());
    }
}
