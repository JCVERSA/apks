package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

public final class DisposableAutoReleaseMultiObserver<T> extends AbstractDisposableAutoRelease implements q, io.reactivex.rxjava3.core.h, io.reactivex.rxjava3.core.b {
    private static final long serialVersionUID = 8924480688481408726L;
    final yx.f onSuccess;

    public DisposableAutoReleaseMultiObserver(io.reactivex.rxjava3.disposables.d dVar, yx.f fVar, yx.f fVar2, yx.a aVar) {
        super(dVar, fVar2, aVar);
        this.onSuccess = fVar;
    }

    @Override
    public void onSuccess(T t10) {
        io.reactivex.rxjava3.disposables.c cVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar != disposableHelper) {
            lazySet(disposableHelper);
            try {
                this.onSuccess.accept(t10);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                dy.a.r(th2);
            }
        }
        removeSelf();
    }
}
