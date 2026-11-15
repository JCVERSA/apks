package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class ObservableScalarXMap {

    public static final class ScalarDisposable<T> extends AtomicInteger implements io.reactivex.rxjava3.operators.b, Runnable {
        static final int FUSED = 1;
        static final int ON_COMPLETE = 3;
        static final int ON_NEXT = 2;
        static final int START = 0;
        private static final long serialVersionUID = 3880992722410194083L;
        final io.reactivex.rxjava3.core.o observer;
        final T value;

        public ScalarDisposable(io.reactivex.rxjava3.core.o oVar, T t10) {
            this.observer = oVar;
            this.value = t10;
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
        public boolean offer(T t10) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override
        public T poll() {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.value;
        }

        @Override
        public int requestFusion(int i10) {
            if ((i10 & 1) == 0) {
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

        public boolean offer(T t10, T t11) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }

    static final class a extends io.reactivex.rxjava3.core.j {

        final Object f62406a;

        final yx.h f62407b;

        a(Object obj, yx.h hVar) {
            this.f62406a = obj;
            this.f62407b = hVar;
        }

        @Override
        public void D(io.reactivex.rxjava3.core.o oVar) {
            try {
                Object objApply = this.f62407b.apply(this.f62406a);
                Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                io.reactivex.rxjava3.core.m mVar = (io.reactivex.rxjava3.core.m) objApply;
                if (!(mVar instanceof yx.k)) {
                    mVar.subscribe(oVar);
                    return;
                }
                try {
                    Object obj = ((yx.k) mVar).get();
                    if (obj == null) {
                        EmptyDisposable.complete(oVar);
                        return;
                    }
                    ScalarDisposable scalarDisposable = new ScalarDisposable(oVar, obj);
                    oVar.onSubscribe(scalarDisposable);
                    scalarDisposable.run();
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    EmptyDisposable.error(th2, oVar);
                }
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                EmptyDisposable.error(th3, oVar);
            }
        }
    }

    public static io.reactivex.rxjava3.core.j a(Object obj, yx.h hVar) {
        return dy.a.o(new a(obj, hVar));
    }

    public static boolean b(io.reactivex.rxjava3.core.m mVar, io.reactivex.rxjava3.core.o oVar, yx.h hVar) {
        if (!(mVar instanceof yx.k)) {
            return false;
        }
        try {
            Object obj = ((yx.k) mVar).get();
            if (obj == null) {
                EmptyDisposable.complete(oVar);
                return true;
            }
            try {
                Object objApply = hVar.apply(obj);
                Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                io.reactivex.rxjava3.core.m mVar2 = (io.reactivex.rxjava3.core.m) objApply;
                if (mVar2 instanceof yx.k) {
                    try {
                        Object obj2 = ((yx.k) mVar2).get();
                        if (obj2 == null) {
                            EmptyDisposable.complete(oVar);
                            return true;
                        }
                        ScalarDisposable scalarDisposable = new ScalarDisposable(oVar, obj2);
                        oVar.onSubscribe(scalarDisposable);
                        scalarDisposable.run();
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        EmptyDisposable.error(th2, oVar);
                        return true;
                    }
                } else {
                    mVar2.subscribe(oVar);
                }
                return true;
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                EmptyDisposable.error(th3, oVar);
                return true;
            }
        } catch (Throwable th4) {
            io.reactivex.rxjava3.exceptions.a.b(th4);
            EmptyDisposable.error(th4, oVar);
            return true;
        }
    }
}
