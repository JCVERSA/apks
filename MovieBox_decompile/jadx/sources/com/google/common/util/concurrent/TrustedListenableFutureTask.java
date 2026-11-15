package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

class TrustedListenableFutureTask<V> extends i.a implements RunnableFuture<V> {
    private volatile InterruptibleTask<?> task;

    private final class TrustedFutureInterruptibleAsyncTask extends InterruptibleTask<r> {
        private final e callable;

        TrustedFutureInterruptibleAsyncTask(e eVar) {
            android.support.v4.media.session.c.a(com.google.common.base.m.o(eVar));
        }

        @Override
        void afterRanInterruptiblyFailure(Throwable th2) {
            TrustedListenableFutureTask.this.setException(th2);
        }

        @Override
        final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        @Override
        String toPendingString() {
            throw null;
        }

        @Override
        public void afterRanInterruptiblySuccess(r rVar) {
            TrustedListenableFutureTask.this.setFuture(rVar);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public r runInterruptibly() throws Exception {
            throw null;
        }
    }

    private final class TrustedFutureInterruptibleTask extends InterruptibleTask<V> {
        private final Callable<V> callable;

        TrustedFutureInterruptibleTask(Callable<V> callable) {
            this.callable = (Callable) com.google.common.base.m.o(callable);
        }

        @Override
        void afterRanInterruptiblyFailure(Throwable th2) {
            TrustedListenableFutureTask.this.setException(th2);
        }

        @Override
        void afterRanInterruptiblySuccess(V v10) {
            TrustedListenableFutureTask.this.set(v10);
        }

        @Override
        final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        @Override
        V runInterruptibly() throws Exception {
            return this.callable.call();
        }

        @Override
        String toPendingString() {
            return this.callable.toString();
        }
    }

    TrustedListenableFutureTask(Callable<V> callable) {
        this.task = new TrustedFutureInterruptibleTask(callable);
    }

    static <V> TrustedListenableFutureTask<V> create(e eVar) {
        return new TrustedListenableFutureTask<>(eVar);
    }

    @Override
    protected void afterDone() {
        InterruptibleTask<?> interruptibleTask;
        super.afterDone();
        if (wasInterrupted() && (interruptibleTask = this.task) != null) {
            interruptibleTask.interruptTask();
        }
        this.task = null;
    }

    @Override
    protected String pendingToString() {
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

    static <V> TrustedListenableFutureTask<V> create(Callable<V> callable) {
        return new TrustedListenableFutureTask<>(callable);
    }

    TrustedListenableFutureTask(e eVar) {
        this.task = new TrustedFutureInterruptibleAsyncTask(eVar);
    }

    static <V> TrustedListenableFutureTask<V> create(Runnable runnable, V v10) {
        return new TrustedListenableFutureTask<>(Executors.callable(runnable, v10));
    }
}
