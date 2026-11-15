package io.reactivex.internal.operators.single;

import defpackage.ac7;
import defpackage.hb1;
import defpackage.in9;
import defpackage.mn9;
import defpackage.qb1;
import defpackage.rc2;
import defpackage.re3;
import defpackage.sb1;
import defpackage.t74;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class SingleFlatMapCompletable extends hb1 {
    public final mn9 a;
    public final t74 b;

    public static final class FlatMapCompletableObserver<T> extends AtomicReference<rc2> implements in9, qb1, rc2 {
        private static final long serialVersionUID = -2177128922851101253L;
        final qb1 downstream;
        final t74 mapper;

        public FlatMapCompletableObserver(qb1 qb1Var, t74 t74Var) {
            this.downstream = qb1Var;
            this.mapper = t74Var;
        }

        @Override
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.replace(this, rc2Var);
        }

        @Override
        public void onSuccess(T t) {
            try {
                sb1 sb1Var = (sb1) ac7.d(this.mapper.apply(t), "The mapper returned a null CompletableSource");
                if (isDisposed()) {
                    return;
                }
                sb1Var.a(this);
            } catch (Throwable th) {
                re3.b(th);
                onError(th);
            }
        }
    }

    public SingleFlatMapCompletable(mn9 mn9Var, t74 t74Var) {
        this.a = mn9Var;
        this.b = t74Var;
    }

    @Override
    public void i(qb1 qb1Var) {
        FlatMapCompletableObserver flatMapCompletableObserver = new FlatMapCompletableObserver(qb1Var, this.b);
        qb1Var.onSubscribe(flatMapCompletableObserver);
        this.a.a(flatMapCompletableObserver);
    }
}
