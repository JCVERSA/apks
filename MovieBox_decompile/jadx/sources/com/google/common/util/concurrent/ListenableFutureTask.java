package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class ListenableFutureTask<V> extends FutureTask<V> implements r {
    private final g executionList;

    ListenableFutureTask(Callable<V> callable) {
        super(callable);
        this.executionList = new g();
    }

    public static <V> ListenableFutureTask<V> create(Callable<V> callable) {
        return new ListenableFutureTask<>(callable);
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        this.executionList.a(runnable, executor);
    }

    @Override
    protected void done() {
        this.executionList.b();
    }

    @Override
    public V get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        return nanos <= 2147483647999999999L ? (V) super.get(j10, timeUnit) : (V) super.get(Math.min(nanos, 2147483647999999999L), TimeUnit.NANOSECONDS);
    }

    public static <V> ListenableFutureTask<V> create(Runnable runnable, V v10) {
        return new ListenableFutureTask<>(runnable, v10);
    }

    ListenableFutureTask(Runnable runnable, V v10) {
        super(runnable, v10);
        this.executionList = new g();
    }
}
