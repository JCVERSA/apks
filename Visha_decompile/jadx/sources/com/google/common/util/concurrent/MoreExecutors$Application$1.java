package com.google.common.util.concurrent;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

class MoreExecutors$Application$1 implements Runnable {
    final MoreExecutors.b this$0;
    final ExecutorService val$service;
    final long val$terminationTimeout;
    final TimeUnit val$timeUnit;

    public MoreExecutors$Application$1(MoreExecutors.b bVar, ExecutorService executorService, long j, TimeUnit timeUnit) {
        this.val$service = executorService;
        this.val$terminationTimeout = j;
        this.val$timeUnit = timeUnit;
    }

    @Override
    public void run() {
        try {
            this.val$service.shutdown();
            this.val$service.awaitTermination(this.val$terminationTimeout, this.val$timeUnit);
        } catch (InterruptedException unused) {
        }
    }
}
