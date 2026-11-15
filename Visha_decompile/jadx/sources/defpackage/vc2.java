package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public abstract class vc2 implements pd7, rc2 {
    public final AtomicReference b = new AtomicReference();

    public void a() {
    }

    @Override
    public final void dispose() {
        DisposableHelper.dispose(this.b);
    }

    @Override
    public final boolean isDisposed() {
        return this.b.get() == DisposableHelper.DISPOSED;
    }

    @Override
    public final void onSubscribe(rc2 rc2Var) {
        if (oa3.c(this.b, rc2Var, getClass())) {
            a();
        }
    }
}
