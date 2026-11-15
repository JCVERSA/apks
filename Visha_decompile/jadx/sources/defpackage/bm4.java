package defpackage;

import com.cloud.sdk.commonutil.pool.HSPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;

public class bm4 {
    public static volatile bm4 b;
    public static ThreadPoolExecutor c;
    public ThreadPoolExecutor a;

    public static bm4 b() {
        if (b == null) {
            synchronized (bm4.class) {
                try {
                    if (b == null) {
                        b = new bm4();
                        bm4 bm4Var = b;
                        ThreadPoolExecutor threadPoolExecutorB = c;
                        if (threadPoolExecutorB == null) {
                            threadPoolExecutorB = HSPoolExecutor.b();
                        }
                        bm4Var.a = threadPoolExecutorB;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public void a(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor = this.a;
        if (threadPoolExecutor != null) {
            if (threadPoolExecutor.isShutdown()) {
                this.a.prestartAllCoreThreads();
            }
            this.a.execute(runnable);
        }
    }
}
