package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableCollection;
import com.google.common.util.concurrent.CombinedFuture.CombinedFutureInterruptibleTask;
import defpackage.ej;
import defpackage.im5;
import defpackage.ubc;
import defpackage.xd8;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

public final class CombinedFuture extends AggregateFuture {
    public CombinedFutureInterruptibleTask j;

    public final class AsyncCallableInterruptibleTask extends CombinedFutureInterruptibleTask<im5> {
        private final ej callable;

        public AsyncCallableInterruptibleTask(ej ejVar, Executor executor) {
            super(executor);
            ubc.a(xd8.o(ejVar));
        }

        public String toPendingString() {
            throw null;
        }

        public im5 m85runInterruptibly() throws Exception {
            throw null;
        }

        public void setValue(im5 im5Var) {
            CombinedFuture.this.setFuture(im5Var);
        }
    }

    public final class CallableInterruptibleTask extends CombinedFutureInterruptibleTask<Object> {
        private final Callable<Object> callable;

        public CallableInterruptibleTask(Callable<Object> callable, Executor executor) {
            super(executor);
            this.callable = (Callable) xd8.o(callable);
        }

        public Object runInterruptibly() throws Exception {
            return this.callable.call();
        }

        public void setValue(Object obj) {
            CombinedFuture.this.set(obj);
        }

        public String toPendingString() {
            return this.callable.toString();
        }
    }

    public abstract class CombinedFutureInterruptibleTask<T> extends InterruptibleTask<T> {
        private final Executor listenerExecutor;

        public CombinedFutureInterruptibleTask(Executor executor) {
            this.listenerExecutor = (Executor) xd8.o(executor);
        }

        @Override
        public final void afterRanInterruptiblyFailure(Throwable th) {
            CombinedFuture.this.j = null;
            if (th instanceof ExecutionException) {
                CombinedFuture.this.setException(((ExecutionException) th).getCause());
            } else if (th instanceof CancellationException) {
                CombinedFuture.this.cancel(false);
            } else {
                CombinedFuture.this.setException(th);
            }
        }

        @Override
        public final void afterRanInterruptiblySuccess(T t) {
            CombinedFuture.this.j = null;
            setValue(t);
        }

        public final void execute() {
            try {
                this.listenerExecutor.execute(this);
            } catch (RejectedExecutionException e) {
                CombinedFuture.this.setException(e);
            }
        }

        @Override
        public final boolean isDone() {
            return CombinedFuture.this.isDone();
        }

        public abstract void setValue(T t);
    }

    public CombinedFuture(ImmutableCollection immutableCollection, boolean z, Executor executor, Callable callable) {
        super(immutableCollection, z, false);
        this.j = new CallableInterruptibleTask(callable, executor);
        D();
    }

    @Override
    public void B() {
        CombinedFutureInterruptibleTask combinedFutureInterruptibleTask = this.j;
        if (combinedFutureInterruptibleTask != null) {
            combinedFutureInterruptibleTask.execute();
        }
    }

    @Override
    public void J(AggregateFuture.ReleaseResourcesReason releaseResourcesReason) {
        super.J(releaseResourcesReason);
        if (releaseResourcesReason == AggregateFuture.ReleaseResourcesReason.OUTPUT_FUTURE_DONE) {
            this.j = null;
        }
    }

    @Override
    public void interruptTask() {
        CombinedFutureInterruptibleTask combinedFutureInterruptibleTask = this.j;
        if (combinedFutureInterruptibleTask != null) {
            combinedFutureInterruptibleTask.interruptTask();
        }
    }

    @Override
    public void y(int i, Object obj) {
    }
}
