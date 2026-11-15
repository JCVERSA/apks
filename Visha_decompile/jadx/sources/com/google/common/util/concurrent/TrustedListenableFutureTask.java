package com.google.common.util.concurrent;

import defpackage.ej;
import defpackage.im5;
import defpackage.ubc;
import defpackage.xd8;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

class TrustedListenableFutureTask<V> extends d.a implements RunnableFuture<V> {
    private volatile InterruptibleTask<?> task;

    public final class TrustedFutureInterruptibleAsyncTask extends InterruptibleTask<im5> {
        private final ej callable;

        public TrustedFutureInterruptibleAsyncTask(ej ejVar) {
            ubc.a(xd8.o(ejVar));
        }

        @Override
        public void afterRanInterruptiblyFailure(Throwable th) {
            TrustedListenableFutureTask.this.setException(th);
        }

        @Override
        public final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        @Override
        public String toPendingString() {
            throw null;
        }

        @Override
        public void afterRanInterruptiblySuccess(im5 im5Var) {
            TrustedListenableFutureTask.this.setFuture(im5Var);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public im5 runInterruptibly() throws Exception {
            throw null;
        }
    }

    public final class TrustedFutureInterruptibleTask extends InterruptibleTask<V> {
        private final Callable<V> callable;

        public TrustedFutureInterruptibleTask(Callable<V> callable) {
            this.callable = (Callable) xd8.o(callable);
        }

        @Override
        public void afterRanInterruptiblyFailure(Throwable th) {
            TrustedListenableFutureTask.this.setException(th);
        }

        @Override
        public void afterRanInterruptiblySuccess(V v) {
            TrustedListenableFutureTask.this.set(v);
        }

        @Override
        public final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        @Override
        public V runInterruptibly() throws Exception {
            return this.callable.call();
        }

        @Override
        public String toPendingString() {
            return this.callable.toString();
        }
    }

    public TrustedListenableFutureTask(Callable<V> callable) {
        this.task = new TrustedFutureInterruptibleTask(callable);
    }

    public static <V> TrustedListenableFutureTask<V> create(ej ejVar) {
        return new TrustedListenableFutureTask<>(ejVar);
    }

    @Override
    public void afterDone() {
        InterruptibleTask<?> interruptibleTask;
        super.afterDone();
        if (wasInterrupted() && (interruptibleTask = this.task) != null) {
            interruptibleTask.interruptTask();
        }
        this.task = null;
    }

    @Override
    public String pendingToString() {
        InterruptibleTask<?> interruptibleTask = this.task;
        if (interruptibleTask == null) {
            return super.pendingToString();
        }
        return "task=[" + interruptibleTask + "]";
    }

    @Override
    public void run() {
        InterruptibleTask<?> interruptibleTask = this.task;
        if (interruptibleTask != null) {
            interruptibleTask.run();
        }
        this.task = null;
    }

    public static <V> TrustedListenableFutureTask<V> create(Callable<V> callable) {
        return new TrustedListenableFutureTask<>(callable);
    }

    public TrustedListenableFutureTask(ej ejVar) {
        this.task = new TrustedFutureInterruptibleAsyncTask(ejVar);
    }

    public static <V> TrustedListenableFutureTask<V> create(Runnable runnable, V v) {
        return new TrustedListenableFutureTask<>(Executors.callable(runnable, v));
    }
}
