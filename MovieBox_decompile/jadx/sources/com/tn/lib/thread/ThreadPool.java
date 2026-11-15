package com.tn.lib.thread;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class ThreadPool {

    public static final b f39888a = new b(null);

    private static final Lazy f39889b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return ThreadPool.b();
        }
    });

    private static final int f39890c;

    private static final int f39891d;

    private static final int f39892e;

    private static final BlockingQueue f39893f;

    private static final ThreadFactory f39894g;

    private static ThreadPoolExecutor f39895h;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/tn/lib/thread/ThreadPool$BackgroundThread;", "Ljava/lang/Thread;", "runnable", "Ljava/lang/Runnable;", "name", "", "<init>", "(Ljava/lang/Runnable;Ljava/lang/String;)V", "thread_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class BackgroundThread extends Thread {
        public BackgroundThread(Runnable runnable, String str) {
            super(runnable, str);
            setPriority(5);
        }
    }

    public static final class a implements ThreadFactory {

        private final AtomicInteger f39896a = new AtomicInteger(1);

        a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Intrinsics.h(runnable, "runnable");
            return new BackgroundThread(runnable, "or_threadpool_" + this.f39896a.getAndIncrement());
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ThreadPool a() {
            return (ThreadPool) ThreadPool.f39889b.getValue();
        }

        private b() {
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f39890c = iAvailableProcessors;
        f39891d = RangesKt.h(iAvailableProcessors - 1, 4);
        f39892e = RangesKt.h((iAvailableProcessors * 2) + 1, 8);
        f39893f = new LinkedBlockingQueue(64);
        f39894g = new a();
    }

    private ThreadPool() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f39891d, f39892e, 30L, TimeUnit.SECONDS, f39893f, f39894g, new ThreadPoolExecutor.CallerRunsPolicy());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f39895h = threadPoolExecutor;
    }

    public static final ThreadPool b() {
        return new ThreadPool();
    }

    public static final ThreadPool e() {
        return f39888a.a();
    }

    public final void d(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor = f39895h;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(runnable);
        }
    }
}
