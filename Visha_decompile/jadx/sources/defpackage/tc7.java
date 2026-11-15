package defpackage;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

public final class tc7 extends mc7 {
    public final Callable b;

    public tc7(Callable callable) {
        this.b = callable;
    }

    @Override
    public void c0(pd7 pd7Var) {
        try {
            th = (Throwable) ac7.d(this.b.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            re3.b(th);
        }
        EmptyDisposable.error(th, pd7Var);
    }
}
