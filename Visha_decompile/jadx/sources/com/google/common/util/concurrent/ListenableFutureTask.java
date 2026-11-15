package com.google.common.util.concurrent;

import defpackage.im5;
import defpackage.we3;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class ListenableFutureTask<V> extends FutureTask<V> implements im5 {
    private final we3 executionList;

    public ListenableFutureTask(Callable<V> callable) {
        super(callable);
        this.executionList = new we3();
    }

    public static <V> ListenableFutureTask<V> create(Callable<V> callable) {
        return new ListenableFutureTask<>(callable);
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        this.executionList.a(runnable, executor);
    }

    @Override
    public void done() {
        this.executionList.b();
    }

    @Override
    public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j);
        return nanos <= 2147483647999999999L ? (V) super.get(j, timeUnit) : (V) super.get(Math.min(nanos, 2147483647999999999L), TimeUnit.NANOSECONDS);
    }

    public static <V> ListenableFutureTask<V> create(Runnable runnable, V v) {
        return new ListenableFutureTask<>(runnable, v);
    }

    public ListenableFutureTask(Runnable runnable, V v) {
        super(runnable, v);
        this.executionList = new we3();
    }
}
