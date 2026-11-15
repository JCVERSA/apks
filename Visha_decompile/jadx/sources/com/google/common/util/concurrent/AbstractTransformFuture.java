package com.google.common.util.concurrent;

import defpackage.gj;
import defpackage.im5;
import defpackage.o74;
import defpackage.s18;
import defpackage.xd8;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

abstract class AbstractTransformFuture<I, O, F, T> extends d.a implements Runnable {
    F function;
    im5 inputFuture;

    public static final class AsyncTransformFuture<I, O> extends AbstractTransformFuture<I, O, gj, im5> {
        public AsyncTransformFuture(im5 im5Var, gj gjVar) {
            super(im5Var, gjVar);
        }

        @Override
        public im5 doTransform(gj gjVar, I i) throws Exception {
            im5 im5VarApply = gjVar.apply(i);
            xd8.q(im5VarApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", gjVar);
            return im5VarApply;
        }

        @Override
        public void setResult(im5 im5Var) {
            setFuture(im5Var);
        }
    }

    public static final class TransformFuture<I, O> extends AbstractTransformFuture<I, O, o74, O> {
        public TransformFuture(im5 im5Var, o74 o74Var) {
            super(im5Var, o74Var);
        }

        @Override
        public void setResult(O o) {
            set(o);
        }

        @Override
        public O doTransform(o74 o74Var, I i) {
            return (O) o74Var.apply(i);
        }
    }

    public AbstractTransformFuture(im5 im5Var, F f) {
        this.inputFuture = (im5) xd8.o(im5Var);
        this.function = (F) xd8.o(f);
    }

    public static <I, O> im5 create(im5 im5Var, o74 o74Var, Executor executor) {
        xd8.o(o74Var);
        TransformFuture transformFuture = new TransformFuture(im5Var, o74Var);
        im5Var.addListener(transformFuture, MoreExecutors.c(executor, transformFuture));
        return transformFuture;
    }

    public static <I, O> im5 createAsync(im5 im5Var, gj gjVar, Executor executor) {
        xd8.o(executor);
        AsyncTransformFuture asyncTransformFuture = new AsyncTransformFuture(im5Var, gjVar);
        im5Var.addListener(asyncTransformFuture, MoreExecutors.c(executor, asyncTransformFuture));
        return asyncTransformFuture;
    }

    @Override
    public final void afterDone() {
        maybePropagateCancellationTo(this.inputFuture);
        this.inputFuture = null;
        this.function = null;
    }

    public abstract T doTransform(F f, I i) throws Exception;

    @Override
    public String pendingToString() {
        String str;
        im5 im5Var = this.inputFuture;
        F f = this.function;
        String strPendingToString = super.pendingToString();
        if (im5Var != null) {
            str = "inputFuture=[" + im5Var + "], ";
        } else {
            str = "";
        }
        if (f != null) {
            return str + "function=[" + f + "]";
        }
        if (strPendingToString == null) {
            return null;
        }
        return str + strPendingToString;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void run() {
        im5 im5Var = this.inputFuture;
        F f = this.function;
        if ((isCancelled() | (im5Var == null)) || (f == null)) {
            return;
        }
        this.inputFuture = null;
        if (im5Var.isCancelled()) {
            setFuture(im5Var);
            return;
        }
        try {
            try {
                Object objDoTransform = doTransform(f, Futures.e(im5Var));
                this.function = null;
                setResult(objDoTransform);
            } catch (Throwable th) {
                try {
                    s18.b(th);
                    setException(th);
                } finally {
                    this.function = null;
                }
            }
        } catch (Error e) {
            setException(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e2) {
            setException(e2.getCause());
        } catch (Exception e3) {
            setException(e3);
        }
    }

    public abstract void setResult(T t);
}
