package com.google.common.util.concurrent;

import com.google.common.collect.q2;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract class k extends q2 implements Future {
    protected k() {
    }

    public boolean cancel(boolean z10) {
        return l().cancel(z10);
    }

    @Override
    public Object get() {
        return l().get();
    }

    @Override
    public boolean isCancelled() {
        return l().isCancelled();
    }

    @Override
    public boolean isDone() {
        return l().isDone();
    }

    protected abstract Future l();

    @Override
    public Object get(long j10, TimeUnit timeUnit) {
        return l().get(j10, timeUnit);
    }
}
