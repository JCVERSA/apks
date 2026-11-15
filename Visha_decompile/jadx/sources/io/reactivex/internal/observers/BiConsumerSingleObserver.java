package io.reactivex.internal.observers;

import defpackage.ae0;
import defpackage.in9;
import defpackage.rc2;
import defpackage.re3;
import defpackage.yw8;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class BiConsumerSingleObserver<T> extends AtomicReference<rc2> implements in9, rc2 {
    private static final long serialVersionUID = 4943102778943297569L;
    final ae0 onCallback;

    public BiConsumerSingleObserver(ae0 ae0Var) {
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override
    public void onError(Throwable th) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            throw null;
        } catch (Throwable th2) {
            re3.b(th2);
            yw8.s(new CompositeException(th, th2));
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        DisposableHelper.setOnce(this, rc2Var);
    }

    @Override
    public void onSuccess(T t) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            throw null;
        } catch (Throwable th) {
            re3.b(th);
            yw8.s(th);
        }
    }
}
