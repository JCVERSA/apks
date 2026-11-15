package com.facebook.biddingkit.utils;

import com.facebook.biddingkit.logging.BkLog;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class MultiAsyncTaskExecutor implements Executor {
    private static final int CORE_POOL_SIZE = 4;
    private static final int MAX_POOL_SIZE = 32;
    private static final String TAG = "MultiAsyncTaskExecutor";
    private ThreadPoolExecutor mReservedExecutor;
    public static final Executor GENERAL_EXECUTOR = new MultiAsyncTaskExecutor("GENERAL_EXECUTOR", 4, 32);
    public static final ScheduledExecutorService SCHEDULED_EXECUTOR = Executors.newScheduledThreadPool(4);
    private static int sThreshold = 32;

    public MultiAsyncTaskExecutor(final String str, int i, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i2, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() {
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, String.format(Locale.US, "BiddingKit:%s #%d", str, Integer.valueOf(this.mCount.getAndIncrement())));
            }
        });
        this.mReservedExecutor = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override
    public void execute(Runnable runnable) {
        int size = this.mReservedExecutor.getQueue().size();
        synchronized (MultiAsyncTaskExecutor.class) {
            try {
                int i = sThreshold;
                if (size == i) {
                    sThreshold = i * 2;
                    BkLog.d(TAG, "Tasks queue too long. Size = " + i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mReservedExecutor.execute(runnable);
    }
}
