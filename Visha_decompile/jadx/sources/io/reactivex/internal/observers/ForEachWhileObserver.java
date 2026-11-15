package io.reactivex.internal.observers;

import defpackage.d5;
import defpackage.ie8;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class ForEachWhileObserver<T> extends AtomicReference<rc2> implements pd7, rc2 {
    private static final long serialVersionUID = -4403180040475402120L;
    boolean done;
    final d5 onComplete;
    final zf1 onError;
    final ie8 onNext;

    public ForEachWhileObserver(ie8 ie8Var, zf1 zf1Var, d5 d5Var) {
        this.onNext = ie8Var;
        this.onError = zf1Var;
        this.onComplete = d5Var;
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
        } catch (Throwable th) {
            re3.b(th);
            yw8.s(th);
        }
    }

    @Override
    public void onError(Throwable th) {
        if (this.done) {
            yw8.s(th);
            return;
        }
        this.done = true;
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            re3.b(th2);
            yw8.s(new CompositeException(th, th2));
        }
    }

    @Override
    public void onNext(T t) {
        if (this.done) {
            return;
        }
        try {
            if (this.onNext.test(t)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th) {
            re3.b(th);
            dispose();
            onError(th);
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        DisposableHelper.setOnce(this, rc2Var);
    }
}
