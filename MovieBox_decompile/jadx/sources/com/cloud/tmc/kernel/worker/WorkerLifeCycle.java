package com.cloud.tmc.kernel.worker;

public interface WorkerLifeCycle {
    void onCreate();

    void onDestroy();
}
