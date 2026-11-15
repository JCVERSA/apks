package io.reactivex.internal.operators.observable;

import defpackage.ac7;
import defpackage.fm8;
import defpackage.ld7;
import defpackage.mc7;
import defpackage.pd7;
import defpackage.re3;
import defpackage.t74;
import defpackage.yw8;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class ObservableScalarXMap {

    public static final class ScalarDisposable<T> extends AtomicInteger implements fm8, Runnable {
        static final int FUSED = 1;
        static final int ON_COMPLETE = 3;
        static final int ON_NEXT = 2;
        static final int START = 0;
        private static final long serialVersionUID = 3880992722410194083L;
        final pd7 observer;
        final T value;

        public ScalarDisposable(pd7 pd7Var, T t) {
            this.observer = pd7Var;
            this.value = t;
        }

        @Override
        public void clear() {
            lazySet(3);
        }

        @Override
        public void dispose() {
            set(3);
        }

        @Override
        public boolean isDisposed() {
            return get() == 3;
        }

        @Override
        public boolean isEmpty() {
            return get() != 1;
        }

        @Override
        public boolean offer(T t) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override
        public T poll() throws Exception {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.value;
        }

        @Override
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            lazySet(1);
            return 1;
        }

        @Override
        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.observer.onNext(this.value);
                if (get() == 2) {
                    lazySet(3);
                    this.observer.onComplete();
                }
            }
        }

        public boolean offer(T t, T t2) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }

    public static final class a extends mc7 {
        public final Object b;
        public final t74 c;

        public a(Object obj, t74 t74Var) {
            this.b = obj;
            this.c = t74Var;
        }

        @Override
        public void c0(pd7 pd7Var) {
            try {
                ld7 ld7Var = (ld7) ac7.d(this.c.apply(this.b), "The mapper returned a null ObservableSource");
                if (!(ld7Var instanceof Callable)) {
                    ld7Var.subscribe(pd7Var);
                    return;
                }
                try {
                    Object objCall = ((Callable) ld7Var).call();
                    if (objCall == null) {
                        EmptyDisposable.complete(pd7Var);
                        return;
                    }
                    ScalarDisposable scalarDisposable = new ScalarDisposable(pd7Var, objCall);
                    pd7Var.onSubscribe(scalarDisposable);
                    scalarDisposable.run();
                } catch (Throwable th) {
                    re3.b(th);
                    EmptyDisposable.error(th, pd7Var);
                }
            } catch (Throwable th2) {
                EmptyDisposable.error(th2, pd7Var);
            }
        }
    }

    public static mc7 a(Object obj, t74 t74Var) {
        return yw8.o(new a(obj, t74Var));
    }

    public static boolean b(ld7 ld7Var, pd7 pd7Var, t74 t74Var) {
        if (!(ld7Var instanceof Callable)) {
            return false;
        }
        try {
            Object objCall = ((Callable) ld7Var).call();
            if (objCall == null) {
                EmptyDisposable.complete(pd7Var);
                return true;
            }
            try {
                ld7 ld7Var2 = (ld7) ac7.d(t74Var.apply(objCall), "The mapper returned a null ObservableSource");
                if (ld7Var2 instanceof Callable) {
                    try {
                        Object objCall2 = ((Callable) ld7Var2).call();
                        if (objCall2 == null) {
                            EmptyDisposable.complete(pd7Var);
                            return true;
                        }
                        ScalarDisposable scalarDisposable = new ScalarDisposable(pd7Var, objCall2);
                        pd7Var.onSubscribe(scalarDisposable);
                        scalarDisposable.run();
                    } catch (Throwable th) {
                        re3.b(th);
                        EmptyDisposable.error(th, pd7Var);
                        return true;
                    }
                } else {
                    ld7Var2.subscribe(pd7Var);
                }
                return true;
            } catch (Throwable th2) {
                re3.b(th2);
                EmptyDisposable.error(th2, pd7Var);
                return true;
            }
        } catch (Throwable th3) {
            re3.b(th3);
            EmptyDisposable.error(th3, pd7Var);
            return true;
        }
    }
}
