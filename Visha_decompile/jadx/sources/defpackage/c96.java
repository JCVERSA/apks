package defpackage;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

public final class c96 extends b96 {
    public final Callable b;

    public c96(Callable callable) {
        this.b = callable;
    }

    @Override
    public void j(k96 k96Var) {
        try {
            ((l96) ac7.d(this.b.call(), "The maybeSupplier returned a null MaybeSource")).a(k96Var);
        } catch (Throwable th) {
            re3.b(th);
            EmptyDisposable.error(th, k96Var);
        }
    }
}
