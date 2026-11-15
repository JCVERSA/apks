package com.google.android.datatransport.runtime;

import defpackage.vq5;
import java.util.concurrent.Executor;

public class SafeLoggingExecutor implements Executor {
    public final Executor b;

    public static class SafeLoggingRunnable implements Runnable {
        private final Runnable delegate;

        public SafeLoggingRunnable(Runnable runnable) {
            this.delegate = runnable;
        }

        @Override
        public void run() {
            try {
                this.delegate.run();
            } catch (Exception e) {
                vq5.c("Executor", "Background execution failure.", e);
            }
        }
    }

    public SafeLoggingExecutor(Executor executor) {
        this.b = executor;
    }

    @Override
    public void execute(Runnable runnable) {
        this.b.execute(new SafeLoggingRunnable(runnable));
    }
}
