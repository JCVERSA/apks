package defpackage;

import io.reactivex.disposables.a;

public final class nb1 extends hb1 {
    public final Runnable a;

    public nb1(Runnable runnable) {
        this.a = runnable;
    }

    @Override
    public void i(qb1 qb1Var) {
        rc2 rc2VarB = a.b();
        qb1Var.onSubscribe(rc2VarB);
        try {
            this.a.run();
            if (rc2VarB.isDisposed()) {
                return;
            }
            qb1Var.onComplete();
        } catch (Throwable th) {
            re3.b(th);
            if (rc2VarB.isDisposed()) {
                yw8.s(th);
            } else {
                qb1Var.onError(th);
            }
        }
    }
}
