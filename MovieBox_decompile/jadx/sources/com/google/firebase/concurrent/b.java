package com.google.firebase.concurrent;

import android.os.Process;
import android.os.StrictMode;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

class b implements ThreadFactory {

    private static final ThreadFactory f30257e = Executors.defaultThreadFactory();

    private final AtomicLong f30258a = new AtomicLong();

    private final String f30259b;

    private final int f30260c;

    private final StrictMode.ThreadPolicy f30261d;

    b(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        this.f30259b = str;
        this.f30260c = i10;
        this.f30261d = threadPolicy;
    }

    public void b(Runnable runnable) {
        Process.setThreadPriority(this.f30260c);
        StrictMode.ThreadPolicy threadPolicy = this.f30261d;
        if (threadPolicy != null) {
            StrictMode.setThreadPolicy(threadPolicy);
        }
        runnable.run();
    }

    @Override
    public Thread newThread(final Runnable runnable) {
        Thread threadNewThread = f30257e.newThread(new Runnable() {
            @Override
            public final void run() {
                this.f30255a.b(runnable);
            }
        });
        threadNewThread.setName(String.format(Locale.ROOT, "%s Thread #%d", this.f30259b, Long.valueOf(this.f30258a.getAndIncrement())));
        return threadNewThread;
    }
}
