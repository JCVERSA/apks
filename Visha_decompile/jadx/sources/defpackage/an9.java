package defpackage;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

public final class an9 extends xm9 {
    public final Callable a;

    public an9(Callable callable) {
        this.a = callable;
    }

    @Override
    public void q(in9 in9Var) {
        try {
            th = (Throwable) ac7.d(this.a.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            re3.b(th);
        }
        EmptyDisposable.error(th, in9Var);
    }
}
