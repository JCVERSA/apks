package com.google.common.util.concurrent;

import defpackage.gj;
import defpackage.im5;
import defpackage.j45;
import defpackage.k45;
import defpackage.o74;
import defpackage.s18;
import defpackage.s37;
import defpackage.xd8;
import java.lang.Throwable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

abstract class AbstractCatchingFuture<V, X extends Throwable, F, T> extends d.a implements Runnable {
    Class<X> exceptionType;
    F fallback;
    im5 inputFuture;

    public static final class AsyncCatchingFuture<V, X extends Throwable> extends AbstractCatchingFuture<V, X, gj, im5> {
        public AsyncCatchingFuture(im5 im5Var, Class<X> cls, gj gjVar) {
            super(im5Var, cls, gjVar);
        }

        @Override
        public im5 doFallback(gj gjVar, X x) throws Exception {
            im5 im5VarApply = gjVar.apply(x);
            xd8.q(im5VarApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", gjVar);
            return im5VarApply;
        }

        @Override
        public void setResult(im5 im5Var) {
            setFuture(im5Var);
        }
    }

    public static final class CatchingFuture<V, X extends Throwable> extends AbstractCatchingFuture<V, X, o74, V> {
        public CatchingFuture(im5 im5Var, Class<X> cls, o74 o74Var) {
            super(im5Var, cls, o74Var);
        }

        @Override
        public void setResult(V v) {
            set(v);
        }

        @Override
        public V doFallback(o74 o74Var, X x) throws Exception {
            return (V) o74Var.apply(x);
        }
    }

    public AbstractCatchingFuture(im5 im5Var, Class<X> cls, F f) {
        this.inputFuture = (im5) xd8.o(im5Var);
        this.exceptionType = (Class) xd8.o(cls);
        this.fallback = (F) xd8.o(f);
    }

    public static <V, X extends Throwable> im5 create(im5 im5Var, Class<X> cls, o74 o74Var, Executor executor) {
        CatchingFuture catchingFuture = new CatchingFuture(im5Var, cls, o74Var);
        im5Var.addListener(catchingFuture, MoreExecutors.c(executor, catchingFuture));
        return catchingFuture;
    }

    public static <X extends Throwable, V> im5 createAsync(im5 im5Var, Class<X> cls, gj gjVar, Executor executor) {
        AsyncCatchingFuture asyncCatchingFuture = new AsyncCatchingFuture(im5Var, cls, gjVar);
        im5Var.addListener(asyncCatchingFuture, MoreExecutors.c(executor, asyncCatchingFuture));
        return asyncCatchingFuture;
    }

    @Override
    public final void afterDone() {
        maybePropagateCancellationTo(this.inputFuture);
        this.inputFuture = null;
        this.exceptionType = null;
        this.fallback = null;
    }

    public abstract T doFallback(F f, X x) throws Exception;

    @Override
    public String pendingToString() {
        String str;
        im5 im5Var = this.inputFuture;
        Class<X> cls = this.exceptionType;
        F f = this.fallback;
        String strPendingToString = super.pendingToString();
        if (im5Var != null) {
            str = "inputFuture=[" + im5Var + "], ";
        } else {
            str = "";
        }
        if (cls == null || f == null) {
            if (strPendingToString == null) {
                return null;
            }
            return str + strPendingToString;
        }
        return str + "exceptionType=[" + cls + "], fallback=[" + f + "]";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [F, java.lang.Class<X extends java.lang.Throwable>] */
    @Override
    public final void run() {
        Object objE;
        im5 im5Var = this.inputFuture;
        Class<X> cls = this.exceptionType;
        F f = this.fallback;
        if (((f == null) || ((im5Var == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        ?? r3 = (Class<X>) null;
        this.inputFuture = null;
        try {
            th = im5Var instanceof j45 ? k45.a((j45) im5Var) : null;
            objE = th == null ? Futures.e(im5Var) : null;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                cause = new NullPointerException("Future type " + im5Var.getClass() + " threw " + e.getClass() + " without a cause");
            }
            th = cause;
        } catch (Throwable th) {
            th = th;
        }
        if (th == null) {
            set(s37.a(objE));
            return;
        }
        if (!s18.a(th, cls)) {
            setFuture(im5Var);
            return;
        }
        try {
            T tDoFallback = doFallback(f, th);
            this.exceptionType = null;
            this.fallback = null;
            setResult(tDoFallback);
        } catch (Throwable th2) {
            try {
                s18.b(th2);
                setException(th2);
            } finally {
                this.exceptionType = null;
                this.fallback = null;
            }
        }
    }

    public abstract void setResult(T t);
}
