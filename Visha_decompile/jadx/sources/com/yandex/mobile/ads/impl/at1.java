package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.lang.Exception;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public abstract class at1<R, E extends Exception> implements RunnableFuture<R> {
    private final ir b = new ir();
    private final ir c = new ir();
    private final Object d = new Object();

    @Nullable
    private Exception e;

    @Nullable
    private Thread f;
    private boolean g;

    public final void a() {
        this.c.b();
    }

    public abstract void b();

    public abstract void c() throws Exception;

    @Override
    public final boolean cancel(boolean z) {
        synchronized (this.d) {
            try {
                if (!this.g && !this.c.d()) {
                    this.g = true;
                    b();
                    Thread thread = this.f;
                    if (thread == null) {
                        this.b.e();
                        this.c.e();
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

    @Override
    public final R get() throws ExecutionException, InterruptedException {
        this.c.a();
        if (this.g) {
            throw new CancellationException();
        }
        if (this.e == null) {
            return null;
        }
        throw new ExecutionException(this.e);
    }

    @Override
    public final boolean isCancelled() {
        return this.g;
    }

    @Override
    public final boolean isDone() {
        return this.c.d();
    }

    @Override
    public final void run() {
        synchronized (this.d) {
            try {
                if (this.g) {
                    return;
                }
                this.f = Thread.currentThread();
                this.b.e();
                try {
                    try {
                        c();
                        synchronized (this.d) {
                            this.c.e();
                            this.f = null;
                            Thread.interrupted();
                        }
                    } catch (Exception e) {
                        this.e = e;
                        synchronized (this.d) {
                            this.c.e();
                            this.f = null;
                            Thread.interrupted();
                        }
                    }
                } catch (Throwable th) {
                    synchronized (this.d) {
                        this.c.e();
                        this.f = null;
                        Thread.interrupted();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final R get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.c.a(TimeUnit.MILLISECONDS.convert(j, timeUnit))) {
            if (!this.g) {
                if (this.e == null) {
                    return null;
                }
                throw new ExecutionException(this.e);
            }
            throw new CancellationException();
        }
        throw new TimeoutException();
    }
}
