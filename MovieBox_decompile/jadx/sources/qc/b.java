package qc;

import com.google.firebase.messaging.threads.ThreadPriority;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class b {

    private static final qc.a f69620a;

    private static volatile qc.a f69621b;

    private static class C0861b implements qc.a {
        private C0861b() {
        }

        @Override
        public ExecutorService a(ThreadFactory threadFactory, ThreadPriority threadPriority) {
            return b(1, threadFactory, threadPriority);
        }

        public ExecutorService b(int i10, ThreadFactory threadFactory, ThreadPriority threadPriority) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i10, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            return Executors.unconfigurableExecutorService(threadPoolExecutor);
        }
    }

    static {
        C0861b c0861b = new C0861b();
        f69620a = c0861b;
        f69621b = c0861b;
    }

    public static qc.a a() {
        return f69621b;
    }
}
