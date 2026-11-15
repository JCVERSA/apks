package com.google.common.util.concurrent;

import defpackage.im5;
import defpackage.pm5;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;

public abstract class a extends AbstractExecutorService implements pm5 {
    @Override
    public im5 submit(Runnable runnable) {
        return (im5) super.submit(runnable);
    }

    @Override
    public im5 submit(Runnable runnable, Object obj) {
        return (im5) super.submit(runnable, obj);
    }

    @Override
    public final RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return TrustedListenableFutureTask.create(runnable, obj);
    }

    @Override
    public final RunnableFuture newTaskFor(Callable callable) {
        return TrustedListenableFutureTask.create(callable);
    }

    @Override
    public im5 submit(Callable callable) {
        return (im5) super.submit(callable);
    }
}
