package io.reactivex.internal.observers;

import defpackage.fm8;
import defpackage.hm8;
import defpackage.l05;
import defpackage.om9;
import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class InnerQueuedObserver<T> extends AtomicReference<rc2> implements pd7, rc2 {
    private static final long serialVersionUID = -5417183359794346637L;
    volatile boolean done;
    int fusionMode;
    final l05 parent;
    final int prefetch;
    om9 queue;

    public InnerQueuedObserver(l05 l05Var, int i) {
        this.prefetch = i;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public int fusionMode() {
        return this.fusionMode;
    }

    @Override
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean isDone() {
        return this.done;
    }

    @Override
    public void onComplete() {
        throw null;
    }

    @Override
    public void onError(Throwable th) {
        throw null;
    }

    @Override
    public void onNext(T t) {
        if (this.fusionMode != 0) {
            throw null;
        }
        throw null;
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.setOnce(this, rc2Var)) {
            if (rc2Var instanceof fm8) {
                fm8 fm8Var = (fm8) rc2Var;
                int iRequestFusion = fm8Var.requestFusion(3);
                if (iRequestFusion == 1) {
                    this.fusionMode = iRequestFusion;
                    this.queue = fm8Var;
                    this.done = true;
                    throw null;
                }
                if (iRequestFusion == 2) {
                    this.fusionMode = iRequestFusion;
                    this.queue = fm8Var;
                    return;
                }
            }
            this.queue = hm8.c(-this.prefetch);
        }
    }

    public om9 queue() {
        return this.queue;
    }

    public void setDone() {
        this.done = true;
    }
}
