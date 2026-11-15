package com.jeffmony.m3u8library.thread;

import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import com.jeffmony.m3u8library.utils.LogUtils;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class VideoProcessThreadHandler {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    private static final int KEEP_ALIVE = 1;
    private static final int MAXIMUM_POOL_SIZE;
    public static final ExecutorService S_THREAD_POOL_EXECUTOR;
    private static final BlockingQueue<Runnable> S_THREAD_POOL_WORK_QUEUE;
    private static final String TAG = "VideoProcessThreadHandler";
    private static final Handler sMainHandler;

    public static class MediaWorkerThread extends Thread {
        public MediaWorkerThread(Runnable runnable) {
            super(runnable, "video_download_worker_pool_thread");
        }

        @Override
        public void run() {
            Process.setThreadPriority(10);
            long jCurrentTimeMillis = System.currentTimeMillis();
            super.run();
            LogUtils.i(VideoProcessThreadHandler.TAG, "MediaWorkerThread execution time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
        }
    }

    public static class MediaWorkerThreadFactory implements ThreadFactory {
        @Override
        public Thread newThread(Runnable runnable) {
            return new MediaWorkerThread(runnable);
        }

        private MediaWorkerThreadFactory() {
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = iAvailableProcessors;
        int i = iAvailableProcessors + 1;
        CORE_POOL_SIZE = i;
        int i2 = (iAvailableProcessors * 2) + 1;
        MAXIMUM_POOL_SIZE = i2;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        S_THREAD_POOL_WORK_QUEUE = linkedBlockingQueue;
        S_THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(i, i2, 1L, TimeUnit.SECONDS, linkedBlockingQueue, new MediaWorkerThreadFactory(), new ThreadPoolExecutor.DiscardOldestPolicy());
        sMainHandler = new Handler(Looper.getMainLooper());
    }

    public static Handler getMainHandler() {
        return sMainHandler;
    }

    public static void runOnUiThread(Runnable runnable) {
        runOnUiThread(runnable, 0);
    }

    private static boolean runningOnUiThread() {
        return sMainHandler.getLooper() == Looper.myLooper();
    }

    public static Future submitCallbackTask(Callable callable) {
        return S_THREAD_POOL_EXECUTOR.submit(callable);
    }

    public static Future submitRunnableTask(Runnable runnable) {
        return S_THREAD_POOL_EXECUTOR.submit(runnable);
    }

    public static void runOnUiThread(Runnable runnable, int i) {
        if (i > 0) {
            sMainHandler.postDelayed(runnable, i);
        } else if (runningOnUiThread()) {
            runnable.run();
        } else {
            sMainHandler.post(runnable);
        }
    }
}
