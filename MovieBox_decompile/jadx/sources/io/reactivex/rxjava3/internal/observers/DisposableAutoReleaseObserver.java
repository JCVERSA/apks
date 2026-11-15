package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

public final class DisposableAutoReleaseObserver<T> extends AbstractDisposableAutoRelease implements o {
    private static final long serialVersionUID = 8924480688481408726L;
    final yx.f onNext;

    public DisposableAutoReleaseObserver(io.reactivex.rxjava3.disposables.d dVar, yx.f fVar, yx.f fVar2, yx.a aVar) {
        super(dVar, fVar2, aVar);
        this.onNext = fVar;
    }

    @Override
    public void onNext(T t10) {
        if (get() != DisposableHelper.DISPOSED) {
            try {
                this.onNext.accept(t10);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                get().dispose();
                onError(th2);
            }
        }
    }
}
