package io.reactivex.internal.disposables;

import defpackage.rc2;
import java.util.concurrent.atomic.AtomicReference;

public final class SequentialDisposable extends AtomicReference<rc2> implements rc2 {
    private static final long serialVersionUID = -754898800686245608L;

    public SequentialDisposable() {
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean replace(rc2 rc2Var) {
        return DisposableHelper.replace(this, rc2Var);
    }

    public boolean update(rc2 rc2Var) {
        return DisposableHelper.set(this, rc2Var);
    }

    public SequentialDisposable(rc2 rc2Var) {
        lazySet(rc2Var);
    }
}
