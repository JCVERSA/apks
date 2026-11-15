package defpackage;

import io.reactivex.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.Callable;

public final class wc7 extends mc7 implements Callable {
    public final Callable b;

    public wc7(Callable callable) {
        this.b = callable;
    }

    @Override
    public void c0(pd7 pd7Var) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(pd7Var);
        pd7Var.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            deferredScalarDisposable.complete(ac7.d(this.b.call(), "Callable returned null"));
        } catch (Throwable th) {
            re3.b(th);
            if (deferredScalarDisposable.isDisposed()) {
                yw8.s(th);
            } else {
                pd7Var.onError(th);
            }
        }
    }

    @Override
    public Object call() {
        return ac7.d(this.b.call(), "The callable returned a null value");
    }
}
