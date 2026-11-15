package io.reactivex.internal.disposables;

import defpackage.ac7;
import defpackage.rc2;
import defpackage.wk5;
import defpackage.yw8;
import io.reactivex.exceptions.ProtocolViolationException;
import java.util.concurrent.atomic.AtomicReference;

public enum DisposableHelper implements rc2 {
    DISPOSED;

    public static boolean replace(AtomicReference<rc2> atomicReference, rc2 rc2Var) {
        rc2 rc2Var2;
        do {
            rc2Var2 = atomicReference.get();
            if (rc2Var2 == DISPOSED) {
                if (rc2Var == null) {
                    return false;
                }
                rc2Var.dispose();
                return false;
            }
        } while (!wk5.a(atomicReference, rc2Var2, rc2Var));
        return true;
    }

    public static void reportDisposableSet() {
        yw8.s(new ProtocolViolationException("Disposable already set!"));
    }

    public static boolean set(AtomicReference<rc2> atomicReference, rc2 rc2Var) {
        rc2 rc2Var2;
        do {
            rc2Var2 = atomicReference.get();
            if (rc2Var2 == DISPOSED) {
                if (rc2Var == null) {
                    return false;
                }
                rc2Var.dispose();
                return false;
            }
        } while (!wk5.a(atomicReference, rc2Var2, rc2Var));
        if (rc2Var2 == null) {
            return true;
        }
        rc2Var2.dispose();
        return true;
    }

    public static boolean setOnce(AtomicReference<rc2> atomicReference, rc2 rc2Var) {
        ac7.d(rc2Var, "d is null");
        if (wk5.a(atomicReference, null, rc2Var)) {
            return true;
        }
        rc2Var.dispose();
        if (atomicReference.get() == DISPOSED) {
            return false;
        }
        reportDisposableSet();
        return false;
    }

    public static boolean trySet(AtomicReference<rc2> atomicReference, rc2 rc2Var) {
        if (wk5.a(atomicReference, null, rc2Var)) {
            return true;
        }
        if (atomicReference.get() != DISPOSED) {
            return false;
        }
        rc2Var.dispose();
        return false;
    }

    public static boolean validate(rc2 rc2Var, rc2 rc2Var2) {
        if (rc2Var2 == null) {
            yw8.s(new NullPointerException("next is null"));
            return false;
        }
        if (rc2Var == null) {
            return true;
        }
        rc2Var2.dispose();
        reportDisposableSet();
        return false;
    }

    @Override
    public void dispose() {
    }

    @Override
    public boolean isDisposed() {
        return true;
    }

    public static boolean dispose(AtomicReference<rc2> atomicReference) {
        rc2 andSet;
        rc2 rc2Var = atomicReference.get();
        DisposableHelper disposableHelper = DISPOSED;
        if (rc2Var == disposableHelper || (andSet = atomicReference.getAndSet(disposableHelper)) == disposableHelper) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.dispose();
        return true;
    }

    public static boolean isDisposed(rc2 rc2Var) {
        return rc2Var == DISPOSED;
    }
}
