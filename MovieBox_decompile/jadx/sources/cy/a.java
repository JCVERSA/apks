package cy;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public abstract class a implements o, c {

    final AtomicReference f58668a = new AtomicReference();

    protected void a() {
    }

    @Override
    public final void dispose() {
        DisposableHelper.dispose(this.f58668a);
    }

    @Override
    public final boolean isDisposed() {
        return this.f58668a.get() == DisposableHelper.DISPOSED;
    }

    @Override
    public final void onSubscribe(c cVar) {
        if (io.reactivex.rxjava3.internal.util.c.d(this.f58668a, cVar, getClass())) {
            a();
        }
    }
}
