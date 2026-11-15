package com.cloud.hisavana.net.utils;

import android.os.Handler;
import android.os.HandlerThread;

public class CommonWorkThread {

    private final Handler f20811a;

    private static class WorkThreadHolder {

        private static final CommonWorkThread f20812a = new CommonWorkThread();

        private WorkThreadHolder() {
        }
    }

    private CommonWorkThread() {
        HandlerThread handlerThread = new HandlerThread("common_work_thread");
        handlerThread.start();
        this.f20811a = new Handler(handlerThread.getLooper());
    }
}
