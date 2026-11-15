package defpackage;

import io.reactivex.internal.disposables.EmptyDisposable;

public final class mb1 extends hb1 {
    public final Throwable a;

    public mb1(Throwable th) {
        this.a = th;
    }

    @Override
    public void i(qb1 qb1Var) {
        EmptyDisposable.error(this.a, qb1Var);
    }
}
