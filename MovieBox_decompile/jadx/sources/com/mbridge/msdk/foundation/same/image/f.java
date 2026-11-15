package com.mbridge.msdk.foundation.same.image;

import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class f {

    private static ThreadPoolExecutor f34587a;

    class a implements ThreadFactory {
        a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("mb-image-loader-thread");
            return thread;
        }
    }

    private static ThreadFactory a() {
        return new a();
    }

    public static ThreadPoolExecutor b() {
        if (f34587a == null) {
            int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
            f34587a = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 10L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), a(), new ThreadPoolExecutor.DiscardPolicy());
        }
        f34587a.allowCoreThreadTimeOut(true);
        return f34587a;
    }
}
