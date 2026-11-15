package com.cloud.hisavana.net.utils;

import android.os.Handler;
import android.os.HandlerThread;

public class CommonWorkThread {
    public final Handler a;

    public static class WorkThreadHolder {
        public static final CommonWorkThread a = new CommonWorkThread();

        private WorkThreadHolder() {
        }
    }

    private CommonWorkThread() {
        HandlerThread handlerThread = new HandlerThread("common_work_thread");
        handlerThread.start();
        this.a = new Handler(handlerThread.getLooper());
    }
}
