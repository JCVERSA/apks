package com.transsion.kolun.oxygenbus.common;

import com.transsion.apiinvoke.common.ApiInvokeLog;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class ApiAsyncUtils {
    private static final String TAG = "KolunIPCChannel";
    private static final ExecutorService executorService = Executors.newFixedThreadPool(3);
    private static int requestCount = 0;

    public static Future<?> submit(ApiAyncRunnable apiAyncRunnable) {
        requestCount++;
        Future<?> futureSubmit = executorService.submit(apiAyncRunnable);
        ApiInvokeLog.logInfo(TAG, "ApiAsyncUtils called in main:" + apiAyncRunnable.isMainThreadCall + "|" + requestCount);
        return futureSubmit;
    }
}
