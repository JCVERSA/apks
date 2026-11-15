package com.cloud.tmc.kernel.scheduler;

import com.cloud.tmc.kernel.executor.IExecutorService;

public interface Schedulable {
    void setExecutorFactory(IExecutorService iExecutorService);
}
