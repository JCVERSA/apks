package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

abstract class TransferThreadPool {

    private static final Log f17905a = LogFactory.b(TransferService.class);

    private static ExecutorService f17906b;

    private static ExecutorService f17907c;

    private static ExecutorService a(int i10) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i10, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    static synchronized void b(int i10) {
        try {
            f17905a.a("Initializing the thread pool of size: " + i10);
            int iMax = Math.max((int) Math.ceil(((double) i10) / 2.0d), 1);
            if (f17906b == null) {
                f17906b = a(iMax);
            }
            if (f17907c == null) {
                f17907c = a(iMax);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static Future c(Callable callable) {
        b(TransferUtilityOptions.getDefaultThreadPoolSize());
        return callable instanceof UploadPartTask ? f17907c.submit(callable) : f17906b.submit(callable);
    }
}
