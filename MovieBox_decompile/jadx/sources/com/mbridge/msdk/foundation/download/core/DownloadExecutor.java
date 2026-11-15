package com.mbridge.msdk.foundation.download.core;

import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class DownloadExecutor extends ThreadPoolExecutor {
    DownloadExecutor(int i10, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i10, i10 * 2, 15L, TimeUnit.MICROSECONDS, new PriorityBlockingQueue(), threadFactory, rejectedExecutionHandler);
    }

    @Override
    public Future<?> submit(Runnable runnable) {
        DownloadFutureTask downloadFutureTask = new DownloadFutureTask((Downloader) runnable);
        execute(downloadFutureTask);
        return downloadFutureTask;
    }
}
