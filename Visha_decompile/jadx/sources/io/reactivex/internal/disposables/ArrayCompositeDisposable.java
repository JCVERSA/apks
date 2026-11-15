package io.reactivex.internal.disposables;

import defpackage.rc2;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class ArrayCompositeDisposable extends AtomicReferenceArray<rc2> implements rc2 {
    private static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeDisposable(int i) {
        super(i);
    }

    @Override
    public void dispose() {
        rc2 andSet;
        if (get(0) != DisposableHelper.DISPOSED) {
            int length = length();
            for (int i = 0; i < length; i++) {
                rc2 rc2Var = get(i);
                DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                if (rc2Var != disposableHelper && (andSet = getAndSet(i, disposableHelper)) != disposableHelper && andSet != null) {
                    andSet.dispose();
                }
            }
        }
    }

    @Override
    public boolean isDisposed() {
        return get(0) == DisposableHelper.DISPOSED;
    }

    public rc2 replaceResource(int i, rc2 rc2Var) {
        rc2 rc2Var2;
        do {
            rc2Var2 = get(i);
            if (rc2Var2 == DisposableHelper.DISPOSED) {
                rc2Var.dispose();
                return null;
            }
        } while (!compareAndSet(i, rc2Var2, rc2Var));
        return rc2Var2;
    }

    public boolean setResource(int i, rc2 rc2Var) {
        rc2 rc2Var2;
        do {
            rc2Var2 = get(i);
            if (rc2Var2 == DisposableHelper.DISPOSED) {
                rc2Var.dispose();
                return false;
            }
        } while (!compareAndSet(i, rc2Var2, rc2Var));
        if (rc2Var2 == null) {
            return true;
        }
        rc2Var2.dispose();
        return true;
    }
}
