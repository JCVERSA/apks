package com.google.common.util.concurrent;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;

public abstract class a extends AbstractExecutorService implements t {
    @Override
    public r submit(Runnable runnable) {
        return (r) super.submit(runnable);
    }

    @Override
    public r submit(Runnable runnable, Object obj) {
        return (r) super.submit(runnable, obj);
    }

    @Override
    protected final RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return TrustedListenableFutureTask.create(runnable, obj);
    }

    @Override
    protected final RunnableFuture newTaskFor(Callable callable) {
        return TrustedListenableFutureTask.create(callable);
    }

    @Override
    public r submit(Callable callable) {
        return (r) super.submit(callable);
    }
}
