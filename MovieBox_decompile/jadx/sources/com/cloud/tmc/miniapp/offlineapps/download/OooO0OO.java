package com.cloud.tmc.miniapp.offlineapps.download;

import com.cloud.tmc.kernel.log.TmcLogger;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

public final class OooO0OO implements RejectedExecutionHandler {
    @Override
    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        TmcLogger.d("IconDownloadManager", "rejectedExecution");
    }
}
