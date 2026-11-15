package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import yx.j;

public final class ForEachWhileObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements o, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -4403180040475402120L;
    boolean done;
    final yx.a onComplete;
    final yx.f onError;
    final j onNext;

    public ForEachWhileObserver(j jVar, yx.f fVar, yx.a aVar) {
        this.onNext = jVar;
        this.onError = fVar;
        this.onComplete = aVar;
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
        if (this.done) {
            return;
        }
        this.done = true;
        try {
            this.onComplete.run();
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            dy.a.r(th2);
        }
    }

    @Override
    public void onError(Throwable th2) {
        if (this.done) {
            dy.a.r(th2);
            return;
        }
        this.done = true;
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            dy.a.r(new CompositeException(th2, th3));
        }
    }

    @Override
    public void onNext(T t10) {
        if (this.done) {
            return;
        }
        try {
            if (this.onNext.a(t10)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            dispose();
            onError(th2);
        }
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }
}
