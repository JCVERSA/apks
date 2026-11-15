package com.amazonaws.event;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public class ProgressListenerCallbackExecutor {

    static ExecutorService f17754b = b();

    private final ProgressListener f17755a;

    final class AnonymousClass1 implements Runnable {
        final ProgressListener val$listener;
        final ProgressEvent val$progressEvent;

        AnonymousClass1(ProgressListener progressListener, ProgressEvent progressEvent) {
            this.val$listener = progressListener;
            this.val$progressEvent = progressEvent;
        }

        @Override
        public void run() {
            this.val$listener.a(this.val$progressEvent);
        }
    }

    public ProgressListenerCallbackExecutor(ProgressListener progressListener) {
        this.f17755a = progressListener;
    }

    static ExecutorService b() {
        return Executors.newSingleThreadExecutor(new ThreadFactory() {
            @Override
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("android-sdk-progress-listener-callback-thread");
                thread.setDaemon(true);
                return thread;
            }
        });
    }

    public static ProgressListenerCallbackExecutor d(ProgressListener progressListener) {
        if (progressListener == null) {
            return null;
        }
        return new ProgressListenerCallbackExecutor(progressListener);
    }

    public void c(final ProgressEvent progressEvent) {
        if (this.f17755a == null) {
            return;
        }
        f17754b.submit(new Runnable() {
            @Override
            public void run() {
                ProgressListenerCallbackExecutor.this.f17755a.a(progressEvent);
            }
        });
    }

    public ProgressListenerCallbackExecutor() {
        this.f17755a = null;
    }
}
