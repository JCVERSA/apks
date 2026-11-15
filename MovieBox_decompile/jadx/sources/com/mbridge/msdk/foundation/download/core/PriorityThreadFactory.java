package com.mbridge.msdk.foundation.download.core;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

public class PriorityThreadFactory implements ThreadFactory {
    private final int threadPriority;

    PriorityThreadFactory(int i10) {
        this.threadPriority = i10;
    }

    @Override
    public Thread newThread(final Runnable runnable) {
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Process.setThreadPriority(PriorityThreadFactory.this.threadPriority);
                } catch (Throwable unused) {
                }
                try {
                    runnable.run();
                } catch (Exception unused2) {
                }
            }
        });
        thread.setName("mb_download_thread");
        return thread;
    }
}
