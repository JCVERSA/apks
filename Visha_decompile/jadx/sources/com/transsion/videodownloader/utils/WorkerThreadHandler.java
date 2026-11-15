package com.transsion.videodownloader.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import defpackage.eq5;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class WorkerThreadHandler {
    public static final int a;
    public static final int b;
    public static final int c;
    public static final BlockingQueue d;
    public static final ExecutorService e;
    public static Handler f;

    public static class MediaWorkerThread extends Thread {
        public MediaWorkerThread(Runnable runnable) {
            super(runnable, "video_download_worker_pool_thread");
        }

        @Override
        public void run() {
            Process.setThreadPriority(10);
            long jCurrentTimeMillis = System.currentTimeMillis();
            super.run();
            eq5.c("WorkerThreadHandler", "MediaWorkerThread execution time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
        }
    }

    public static class a implements ThreadFactory {
        @Override
        public Thread newThread(Runnable runnable) {
            return new MediaWorkerThread(runnable);
        }

        public a() {
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        a = iAvailableProcessors;
        int i = iAvailableProcessors + 1;
        b = i;
        int i2 = (iAvailableProcessors * 2) + 1;
        c = i2;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        d = linkedBlockingQueue;
        e = new ThreadPoolExecutor(i, i2, 1L, TimeUnit.SECONDS, linkedBlockingQueue, new a(), new ThreadPoolExecutor.DiscardOldestPolicy());
        f = new Handler(Looper.getMainLooper());
    }

    public static Future a(Runnable runnable) {
        return e.submit(runnable);
    }
}
