package defpackage;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public abstract class wc2 implements y14, rc2 {
    public final AtomicReference b = new AtomicReference();

    public void a() {
        ((f2a) this.b.get()).request(Long.MAX_VALUE);
    }

    @Override
    public final void dispose() {
        SubscriptionHelper.cancel(this.b);
    }

    @Override
    public final boolean isDisposed() {
        return this.b.get() == SubscriptionHelper.CANCELLED;
    }

    @Override
    public final void onSubscribe(f2a f2aVar) {
        if (oa3.d(this.b, f2aVar, getClass())) {
            a();
        }
    }
}
