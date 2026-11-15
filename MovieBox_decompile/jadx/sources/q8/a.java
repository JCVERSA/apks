package q8;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class a implements Executor {

    public static final Executor f69399b = new a("GENERAL_EXECUTOR", 4, 32);

    public static final ScheduledExecutorService f69400c = Executors.newScheduledThreadPool(4);

    private static int f69401d = 32;

    private ThreadPoolExecutor f69402a;

    class ThreadFactoryC0858a implements ThreadFactory {

        private final AtomicInteger f69403a = new AtomicInteger(1);

        final String f69404b;

        ThreadFactoryC0858a(String str) {
            this.f69404b = str;
        }

        @Override
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format(Locale.US, "BiddingKit:%s #%d", this.f69404b, Integer.valueOf(this.f69403a.getAndIncrement())));
        }
    }

    a(String str, int i10, int i11) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i11, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0858a(str));
        this.f69402a = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override
    public void execute(Runnable runnable) {
        int size = this.f69402a.getQueue().size();
        synchronized (a.class) {
            try {
                int i10 = f69401d;
                if (size == i10) {
                    f69401d = i10 * 2;
                    com.facebook.biddingkit.logging.b.a("MultiAsyncTaskExecutor", "Tasks queue too long. Size = " + i10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f69402a.execute(runnable);
    }
}
