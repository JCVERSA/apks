package defpackage;

import io.reactivex.disposables.a;
import java.util.concurrent.Callable;

public final class bn9 extends xm9 {
    public final Callable a;

    public bn9(Callable callable) {
        this.a = callable;
    }

    @Override
    public void q(in9 in9Var) {
        rc2 rc2VarB = a.b();
        in9Var.onSubscribe(rc2VarB);
        if (rc2VarB.isDisposed()) {
            return;
        }
        try {
            Object objD = ac7.d(this.a.call(), "The callable returned a null value");
            if (rc2VarB.isDisposed()) {
                return;
            }
            in9Var.onSuccess(objD);
        } catch (Throwable th) {
            re3.b(th);
            if (rc2VarB.isDisposed()) {
                yw8.s(th);
            } else {
                in9Var.onError(th);
            }
        }
    }
}
