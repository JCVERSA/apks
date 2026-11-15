package com.mbridge.msdk.foundation.same.threadpool;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class a {

    public static ThreadPoolExecutor f34809a;

    private static ThreadPoolExecutor f34810b;

    private static Handler f34811c;

    private static ThreadPoolExecutor f34812d;

    private static ThreadPoolExecutor f34813e;

    private static ThreadPoolExecutor f34814f;

    class ThreadFactoryC0468a implements ThreadFactory {
        ThreadFactoryC0468a() {
        }

        @Override
        public Thread newThread(@NonNull Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            threadNewThread.setName("BitmapThreadPool");
            return threadNewThread;
        }
    }

    class b implements ThreadFactory {
        b() {
        }

        @Override
        public Thread newThread(@NonNull Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            threadNewThread.setName("CommonThreadPool");
            return threadNewThread;
        }
    }

    class c implements ThreadFactory {
        c() {
        }

        @Override
        public Thread newThread(@NonNull Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            threadNewThread.setName("NwtThreadPool");
            return threadNewThread;
        }
    }

    class d implements ThreadFactory {
        d() {
        }

        @Override
        public Thread newThread(@NonNull Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            threadNewThread.setName("ReportThreadPool");
            return threadNewThread;
        }
    }

    class e implements ThreadFactory {
        e() {
        }

        @Override
        public Thread newThread(@NonNull Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("rv-load-tread");
            return thread;
        }
    }

    private static class f extends Handler {
        public f() {
            super(Looper.getMainLooper());
        }

        @Override
        public void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
        }
    }

    public static ThreadPoolExecutor a() {
        if (f34810b == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 5, 10L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(10), new ThreadFactoryC0468a(), new ThreadPoolExecutor.DiscardPolicy());
            f34810b = threadPoolExecutor;
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        }
        return f34810b;
    }

    public static ThreadPoolExecutor b() {
        if (f34809a == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 25, 10L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(100), new b(), new ThreadPoolExecutor.DiscardPolicy());
            f34809a = threadPoolExecutor;
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        }
        return f34809a;
    }

    public static Handler c() {
        if (f34811c == null) {
            f34811c = new f();
        }
        return f34811c;
    }

    public static ThreadPoolExecutor d() {
        if (f34812d == null) {
            f34812d = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(1), new c(), new ThreadPoolExecutor.DiscardPolicy());
        }
        return f34812d;
    }

    public static ThreadPoolExecutor e() {
        if (f34813e == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 15, 10L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(100), new d(), new ThreadPoolExecutor.DiscardPolicy());
            f34813e = threadPoolExecutor;
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        }
        return f34813e;
    }

    public static ThreadPoolExecutor f() {
        if (f34814f == null) {
            e eVar = new e();
            int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors * 2, 10L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(30), eVar, new ThreadPoolExecutor.DiscardPolicy());
            f34814f = threadPoolExecutor;
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        }
        return f34814f;
    }
}
