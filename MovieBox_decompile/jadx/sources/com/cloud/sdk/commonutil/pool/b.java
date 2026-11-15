package com.cloud.sdk.commonutil.pool;

import java.util.concurrent.ThreadPoolExecutor;

public class b {

    private static volatile b f22488b;

    private static ThreadPoolExecutor f22489c;

    private ThreadPoolExecutor f22490a;

    public static b b() {
        if (f22488b == null) {
            synchronized (b.class) {
                try {
                    if (f22488b == null) {
                        f22488b = new b();
                        b bVar = f22488b;
                        ThreadPoolExecutor threadPoolExecutorB = f22489c;
                        if (threadPoolExecutorB == null) {
                            threadPoolExecutorB = HSPoolExecutor.b();
                        }
                        bVar.f22490a = threadPoolExecutorB;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f22488b;
    }

    public void a(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor = this.f22490a;
        if (threadPoolExecutor != null) {
            if (threadPoolExecutor.isShutdown()) {
                this.f22490a.prestartAllCoreThreads();
            }
            this.f22490a.execute(runnable);
        }
    }
}
