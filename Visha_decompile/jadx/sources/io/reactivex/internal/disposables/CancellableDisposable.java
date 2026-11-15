package io.reactivex.internal.disposables;

import defpackage.br0;
import defpackage.rc2;
import defpackage.ubc;
import java.util.concurrent.atomic.AtomicReference;

public final class CancellableDisposable extends AtomicReference<br0> implements rc2 {
    private static final long serialVersionUID = 5718521705281392066L;

    public CancellableDisposable(br0 br0Var) {
        super(br0Var);
    }

    @Override
    public void dispose() {
        if (get() != null) {
            ubc.a(getAndSet(null));
        }
    }

    @Override
    public boolean isDisposed() {
        return get() == null;
    }
}
