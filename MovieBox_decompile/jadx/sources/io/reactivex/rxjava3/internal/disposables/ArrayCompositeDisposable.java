package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.disposables.c;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class ArrayCompositeDisposable extends AtomicReferenceArray<c> implements c {
    private static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeDisposable(int i10) {
        super(i10);
    }

    @Override
    public void dispose() {
        c andSet;
        if (get(0) != DisposableHelper.DISPOSED) {
            int length = length();
            for (int i10 = 0; i10 < length; i10++) {
                c cVar = get(i10);
                DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                if (cVar != disposableHelper && (andSet = getAndSet(i10, disposableHelper)) != disposableHelper && andSet != null) {
                    andSet.dispose();
                }
            }
        }
    }

    @Override
    public boolean isDisposed() {
        return get(0) == DisposableHelper.DISPOSED;
    }

    public c replaceResource(int i10, c cVar) {
        c cVar2;
        do {
            cVar2 = get(i10);
            if (cVar2 == DisposableHelper.DISPOSED) {
                cVar.dispose();
                return null;
            }
        } while (!compareAndSet(i10, cVar2, cVar));
        return cVar2;
    }

    public boolean setResource(int i10, c cVar) {
        c cVar2;
        do {
            cVar2 = get(i10);
            if (cVar2 == DisposableHelper.DISPOSED) {
                cVar.dispose();
                return false;
            }
        } while (!compareAndSet(i10, cVar2, cVar));
        if (cVar2 == null) {
            return true;
        }
        cVar2.dispose();
        return true;
    }
}
