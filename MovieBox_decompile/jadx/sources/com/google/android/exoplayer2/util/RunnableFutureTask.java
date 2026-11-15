package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
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
    private final h started = new h();
    private final h finished = new h();
    private final Object cancelLock = new Object();

    protected RunnableFutureTask() {
    }

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
    public final boolean cancel(boolean z10) {
        synchronized (this.cancelLock) {
            try {
                if (!this.canceled && !this.finished.e()) {
                    this.canceled = true;
                    cancelWork();
                    Thread thread = this.workThread;
                    if (thread == null) {
                        this.started.f();
                        this.finished.f();
                    } else if (z10) {
                        thread.interrupt();
                    }
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected abstract R doWork() throws Exception;

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
                    } catch (Throwable th2) {
                        synchronized (this.cancelLock) {
                            this.finished.f();
                            this.workThread = null;
                            Thread.interrupted();
                            throw th2;
                        }
                    }
                } catch (Exception e10) {
                    this.exception = e10;
                    synchronized (this.cancelLock) {
                        this.finished.f();
                        this.workThread = null;
                        Thread.interrupted();
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override
    public final R get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.finished.b(TimeUnit.MILLISECONDS.convert(j10, timeUnit))) {
            return getResult();
        }
        throw new TimeoutException();
    }

    protected void cancelWork() {
    }
}
