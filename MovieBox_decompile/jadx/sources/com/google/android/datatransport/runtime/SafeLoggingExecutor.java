package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;

class SafeLoggingExecutor implements Executor {

    private final Executor f23663a;

    static class SafeLoggingRunnable implements Runnable {
        private final Runnable delegate;

        SafeLoggingRunnable(Runnable runnable) {
            this.delegate = runnable;
        }

        @Override
        public void run() {
            try {
                this.delegate.run();
            } catch (Exception e10) {
                y8.a.d("Executor", "Background execution failure.", e10);
            }
        }
    }

    SafeLoggingExecutor(Executor executor) {
        this.f23663a = executor;
    }

    @Override
    public void execute(Runnable runnable) {
        this.f23663a.execute(new SafeLoggingRunnable(runnable));
    }
}
