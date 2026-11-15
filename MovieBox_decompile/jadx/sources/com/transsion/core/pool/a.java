package com.transsion.core.pool;

import java.util.concurrent.ThreadPoolExecutor;

public class a implements b {

    private static volatile a f42889b;

    private ThreadPoolExecutor f42890a;

    public static a b() {
        if (f42889b == null) {
            synchronized (a.class) {
                try {
                    if (f42889b == null) {
                        f42889b = new a();
                        f42889b.f42890a = TranssionPoolExecutor.c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f42889b;
    }

    @Override
    public void a(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor = this.f42890a;
        if (threadPoolExecutor != null) {
            if (threadPoolExecutor.isShutdown()) {
                this.f42890a.prestartAllCoreThreads();
            }
            this.f42890a.execute(runnable);
        }
    }
}
