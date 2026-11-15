package com.google.common.util.concurrent;

import defpackage.gj;
import defpackage.im5;
import defpackage.j94;
import defpackage.kk4;
import defpackage.o74;
import defpackage.x44;
import defpackage.xd8;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public abstract class d extends kk4 {

    public static abstract class a extends d implements AbstractFuture.g {
        @Override
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override
        public final Object get() throws ExecutionException, InterruptedException {
            return super.get();
        }

        @Override
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override
        public final boolean isDone() {
            return super.isDone();
        }

        @Override
        public final Object get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return super.get(j, timeUnit);
        }
    }

    public static <V> d from(im5 im5Var) {
        return im5Var instanceof d ? (d) im5Var : new x44(im5Var);
    }

    public final void addCallback(j94 j94Var, Executor executor) {
        Futures.a(this, j94Var, executor);
    }

    public final <X extends Throwable> d catching(Class<X> cls, o74 o74Var, Executor executor) {
        return (d) Futures.b(this, cls, o74Var, executor);
    }

    public final <X extends Throwable> d catchingAsync(Class<X> cls, gj gjVar, Executor executor) {
        return (d) Futures.c(this, cls, gjVar, executor);
    }

    public final <T> d transform(o74 o74Var, Executor executor) {
        return (d) Futures.i(this, o74Var, executor);
    }

    public final <T> d transformAsync(gj gjVar, Executor executor) {
        return (d) Futures.j(this, gjVar, executor);
    }

    public final d withTimeout(long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (d) Futures.l(this, j, timeUnit, scheduledExecutorService);
    }

    @Deprecated
    public static <V> d from(d dVar) {
        return (d) xd8.o(dVar);
    }
}
