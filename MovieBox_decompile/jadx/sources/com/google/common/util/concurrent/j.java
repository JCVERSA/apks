package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

final class j extends i {

    private final r f30208a;

    j(r rVar) {
        this.f30208a = (r) com.google.common.base.m.o(rVar);
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        this.f30208a.addListener(runnable, executor);
    }

    @Override
    public boolean cancel(boolean z10) {
        return this.f30208a.cancel(z10);
    }

    @Override
    public Object get() {
        return this.f30208a.get();
    }

    @Override
    public boolean isCancelled() {
        return this.f30208a.isCancelled();
    }

    @Override
    public boolean isDone() {
        return this.f30208a.isDone();
    }

    @Override
    public String toString() {
        return this.f30208a.toString();
    }

    @Override
    public Object get(long j10, TimeUnit timeUnit) {
        return this.f30208a.get(j10, timeUnit);
    }
}
