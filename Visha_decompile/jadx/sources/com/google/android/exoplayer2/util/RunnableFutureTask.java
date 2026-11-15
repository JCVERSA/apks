package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import defpackage.le1;
import java.lang.Exception;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public abstract class RunnableFutureTask<R, E extends Exception> implements RunnableFuture<R> {
    private boolean canceled;

    @Nullable
    private Exception exception;

    @Nullable
    private R result;

    @Nullable
    private Thread workThread;
    private final le1 started = new le1();
    private final le1 finished = new le1();
    private final Object cancelLock = new Object();

    private R getResult() throws ExecutionException {
        if (this.canceled) {
            throw new CancellationException();
        }
        if (this.exception == null) {
            return this.result;
        }
        throw new ExecutionException(this.exception);
    }

    public final void blockUntilFinished() {
        this.finished.c();
    }

    public final void blockUntilStarted() {
        this.started.c();
    }

    @Override
    public final boolean cancel(boolean z) {
        synchronized (this.cancelLock) {
            try {
                if (!this.canceled && !this.finished.e()) {
                    this.canceled = true;
                    cancelWork();
                    Thread thread = this.workThread;
                    if (thread == null) {
                        this.started.f();
                        this.finished.f();
                    } else if (z) {
                        thread.interrupt();
                    }
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void cancelWork() {
    }

    public abstract R doWork() throws Exception;

    @Override
    public final R get() throws ExecutionException, InterruptedException {
        this.finished.a();
        return getResult();
    }

    @Override
    public final boolean isCancelled() {
        return this.canceled;
    }

    @Override
    public final boolean isDone() {
        return this.finished.e();
    }

    @Override
    public final void run() {
        synchronized (this.cancelLock) {
            try {
                if (this.canceled) {
                    return;
                }
                this.workThread = Thread.currentThread();
                this.started.f();
                try {
                    try {
                        this.result = doWork();
                        synchronized (this.cancelLock) {
                            this.finished.f();
                            this.workThread = null;
                            Thread.interrupted();
                        }
                    } catch (Throwable th) {
                        synchronized (this.cancelLock) {
                            this.finished.f();
                            this.workThread = null;
                            Thread.interrupted();
                            throw th;
                        }
                    }
                } catch (Exception e) {
                    this.exception = e;
                    synchronized (this.cancelLock) {
                        this.finished.f();
                        this.workThread = null;
                        Thread.interrupted();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final R get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.finished.b(TimeUnit.MILLISECONDS.convert(j, timeUnit))) {
            return getResult();
        }
        throw new TimeoutException();
    }
}
