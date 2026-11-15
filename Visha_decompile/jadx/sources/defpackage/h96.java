package defpackage;

import io.reactivex.disposables.a;
import java.util.concurrent.Callable;

public final class h96 extends b96 implements Callable {
    public final Callable b;

    public h96(Callable callable) {
        this.b = callable;
    }

    @Override
    public Object call() {
        return this.b.call();
    }

    @Override
    public void j(k96 k96Var) {
        rc2 rc2VarB = a.b();
        k96Var.onSubscribe(rc2VarB);
        if (rc2VarB.isDisposed()) {
            return;
        }
        try {
            Object objCall = this.b.call();
            if (rc2VarB.isDisposed()) {
                return;
            }
            if (objCall == null) {
                k96Var.onComplete();
            } else {
                k96Var.onSuccess(objCall);
            }
        } catch (Throwable th) {
            re3.b(th);
            if (rc2VarB.isDisposed()) {
                yw8.s(th);
            } else {
                k96Var.onError(th);
            }
        }
    }
}
