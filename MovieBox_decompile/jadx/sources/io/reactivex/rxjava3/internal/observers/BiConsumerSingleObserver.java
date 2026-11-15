package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class BiConsumerSingleObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements q, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = 4943102778943297569L;
    final yx.b onCallback;

    public BiConsumerSingleObserver(yx.b bVar) {
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
    public void onError(Throwable th2) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            throw null;
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            dy.a.r(new CompositeException(th2, th3));
        }
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override
    public void onSuccess(T t10) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            throw null;
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            dy.a.r(th2);
        }
    }
}
