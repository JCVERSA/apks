package fy;

import i00.d;
import io.reactivex.rxjava3.core.f;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public abstract class a implements f, c {

    final AtomicReference f60546a = new AtomicReference();

    protected void a() {
        ((d) this.f60546a.get()).request(Long.MAX_VALUE);
    }

    @Override
    public final void dispose() {
        SubscriptionHelper.cancel(this.f60546a);
    }

    @Override
    public final boolean isDisposed() {
        return this.f60546a.get() == SubscriptionHelper.CANCELLED;
    }

    @Override
    public final void onSubscribe(d dVar) {
        if (io.reactivex.rxjava3.internal.util.c.c(this.f60546a, dVar, getClass())) {
            a();
        }
    }
}
