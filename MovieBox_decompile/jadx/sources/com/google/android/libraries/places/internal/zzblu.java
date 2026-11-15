package com.google.android.libraries.places.internal;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class zzblu implements ScheduledExecutorService {
    final ScheduledExecutorService zza;

    zzblu(ScheduledExecutorService scheduledExecutorService, zzblt zzbltVar) {
        zzmt.zzc(scheduledExecutorService, "delegate");
        this.zza = scheduledExecutorService;
    }

    @Override
    public final boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.zza.awaitTermination(j10, timeUnit);
    }

    @Override
    public final void execute(Runnable runnable) {
        this.zza.execute(runnable);
    }

    @Override
    public final List invokeAll(Collection collection) throws InterruptedException {
        return this.zza.invokeAll(collection);
    }

    @Override
    public final Object invokeAny(Collection collection) throws ExecutionException, InterruptedException {
        return this.zza.invokeAny(collection);
    }

    @Override
    public final boolean isShutdown() {
        return this.zza.isShutdown();
    }

    @Override
    public final boolean isTerminated() {
        return this.zza.isTerminated();
    }

    @Override
    public final ScheduledFuture schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
        return this.zza.schedule(runnable, j10, timeUnit);
    }

    @Override
    public final ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        return this.zza.scheduleAtFixedRate(runnable, j10, j11, timeUnit);
    }

    @Override
    public final ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        return this.zza.scheduleWithFixedDelay(runnable, j10, j11, timeUnit);
    }

    @Override
    public final void shutdown() {
        throw new UnsupportedOperationException("Restricted: shutdown() is not allowed");
    }

    @Override
    public final List shutdownNow() {
        throw new UnsupportedOperationException("Restricted: shutdownNow() is not allowed");
    }

    @Override
    public final Future submit(Runnable runnable) {
        return this.zza.submit(runnable);
    }

    @Override
    public final List invokeAll(Collection collection, long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.zza.invokeAll(collection, j10, timeUnit);
    }

    @Override
    public final Object invokeAny(Collection collection, long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.zza.invokeAny(collection, j10, timeUnit);
    }

    @Override
    public final ScheduledFuture schedule(Callable callable, long j10, TimeUnit timeUnit) {
        return this.zza.schedule(callable, j10, timeUnit);
    }

    @Override
    public final Future submit(Runnable runnable, Object obj) {
        return this.zza.submit(runnable, obj);
    }

    @Override
    public final Future submit(Callable callable) {
        return this.zza.submit(callable);
    }
}
