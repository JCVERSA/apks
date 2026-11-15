package io.reactivex.internal.operators.single;

import defpackage.ac7;
import defpackage.in9;
import defpackage.mn9;
import defpackage.rc2;
import defpackage.re3;
import defpackage.t74;
import defpackage.xm9;
import defpackage.yw8;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class SingleZipArray extends xm9 {
    public final mn9[] a;
    public final t74 b;

    public static final class ZipCoordinator<T, R> extends AtomicInteger implements rc2 {
        private static final long serialVersionUID = -5556924161382950569L;
        final in9 downstream;
        final ZipSingleObserver<T>[] observers;
        final Object[] values;
        final t74 zipper;

        public ZipCoordinator(in9 in9Var, int i, t74 t74Var) {
            super(i);
            this.downstream = in9Var;
            this.zipper = t74Var;
            ZipSingleObserver<T>[] zipSingleObserverArr = new ZipSingleObserver[i];
            for (int i2 = 0; i2 < i; i2++) {
                zipSingleObserverArr[i2] = new ZipSingleObserver<>(this, i2);
            }
            this.observers = zipSingleObserverArr;
            this.values = new Object[i];
        }

        @Override
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (ZipSingleObserver<T> zipSingleObserver : this.observers) {
                    zipSingleObserver.dispose();
                }
            }
        }

        public void disposeExcept(int i) {
            ZipSingleObserver<T>[] zipSingleObserverArr = this.observers;
            int length = zipSingleObserverArr.length;
            for (int i2 = 0; i2 < i; i2++) {
                zipSingleObserverArr[i2].dispose();
            }
            while (true) {
                i++;
                if (i >= length) {
                    return;
                } else {
                    zipSingleObserverArr[i].dispose();
                }
            }
        }

        public void innerError(Throwable th, int i) {
            if (getAndSet(0) <= 0) {
                yw8.s(th);
            } else {
                disposeExcept(i);
                this.downstream.onError(th);
            }
        }

        public void innerSuccess(T t, int i) {
            this.values[i] = t;
            if (decrementAndGet() == 0) {
                try {
                    this.downstream.onSuccess(ac7.d(this.zipper.apply(this.values), "The zipper returned a null value"));
                } catch (Throwable th) {
                    re3.b(th);
                    this.downstream.onError(th);
                }
            }
        }

        @Override
        public boolean isDisposed() {
            return get() <= 0;
        }
    }

    public static final class ZipSingleObserver<T> extends AtomicReference<rc2> implements in9 {
        private static final long serialVersionUID = 3323743579927613702L;
        final int index;
        final ZipCoordinator<T, ?> parent;

        public ZipSingleObserver(ZipCoordinator<T, ?> zipCoordinator, int i) {
            this.parent = zipCoordinator;
            this.index = i;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override
        public void onError(Throwable th) {
            this.parent.innerError(th, this.index);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.setOnce(this, rc2Var);
        }

        @Override
        public void onSuccess(T t) {
            this.parent.innerSuccess(t, this.index);
        }
    }

    public final class a implements t74 {
        public a() {
        }

        @Override
        public Object apply(Object obj) {
            return ac7.d(SingleZipArray.this.b.apply(new Object[]{obj}), "The zipper returned a null value");
        }
    }

    public SingleZipArray(mn9[] mn9VarArr, t74 t74Var) {
        this.a = mn9VarArr;
        this.b = t74Var;
    }

    @Override
    public void q(in9 in9Var) {
        mn9[] mn9VarArr = this.a;
        int length = mn9VarArr.length;
        if (length == 1) {
            mn9VarArr[0].a(new io.reactivex.internal.operators.single.a.C0366a(in9Var, new a()));
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(in9Var, length, this.b);
        in9Var.onSubscribe(zipCoordinator);
        for (int i = 0; i < length && !zipCoordinator.isDisposed(); i++) {
            mn9 mn9Var = mn9VarArr[i];
            if (mn9Var == null) {
                zipCoordinator.innerError(new NullPointerException("One of the sources is null"), i);
                return;
            }
            mn9Var.a(zipCoordinator.observers[i]);
        }
    }
}
