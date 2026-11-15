package defpackage;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class mzh implements lzh {
    public mzh(nzh nzhVar) {
    }

    @Override
    public final ExecutorService a(ThreadFactory threadFactory, int i) {
        return b(1, threadFactory, 1);
    }

    @Override
    public final ExecutorService b(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override
    public final ExecutorService zza(int i) {
        return b(1, Executors.defaultThreadFactory(), 2);
    }
}
