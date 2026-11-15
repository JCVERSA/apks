package com.transsnet.downloader.core.thread;

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

public final class DownloadExecutor {

    public static final b f56425a = new b(null);

    private static final Lazy f56426b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return DownloadExecutor.b();
        }
    });

    private static final int f56427c;

    private static final int f56428d;

    private static final int f56429e;

    private static final BlockingQueue f56430f;

    private static final ThreadFactory f56431g;

    private static ThreadPoolExecutor f56432h;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/transsnet/downloader/core/thread/DownloadExecutor$BackgroundThread;", "Ljava/lang/Thread;", "runnable", "Ljava/lang/Runnable;", "name", "", "<init>", "(Ljava/lang/Runnable;Ljava/lang/String;)V", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class BackgroundThread extends Thread {
        public BackgroundThread(Runnable runnable, String str) {
            super(runnable, str);
            setPriority(5);
        }
    }

    public static final class a implements ThreadFactory {

        private final AtomicInteger f56433a = new AtomicInteger(1);

        a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Intrinsics.h(runnable, "runnable");
            return new BackgroundThread(runnable, "or_download_" + this.f56433a.getAndIncrement());
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return DownloadExecutor.f56428d;
        }

        public final DownloadExecutor b() {
            return (DownloadExecutor) DownloadExecutor.f56426b.getValue();
        }

        private b() {
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f56427c = iAvailableProcessors;
        f56428d = RangesKt.e(iAvailableProcessors, 8);
        f56429e = RangesKt.e(iAvailableProcessors, 8);
        f56430f = new LinkedBlockingQueue(64);
        f56431g = new a();
    }

    private DownloadExecutor() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f56428d, f56429e, 20L, TimeUnit.SECONDS, f56430f, f56431g, new ThreadPoolExecutor.CallerRunsPolicy());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f56432h = threadPoolExecutor;
    }

    public static final DownloadExecutor b() {
        return new DownloadExecutor();
    }

    public final void e(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor = f56432h;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(runnable);
        }
    }
}
