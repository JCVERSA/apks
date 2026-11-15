package io.reactivex.internal.subscriptions;

import defpackage.f2a;
import java.util.concurrent.atomic.AtomicBoolean;

public final class BooleanSubscription extends AtomicBoolean implements f2a {
    private static final long serialVersionUID = -8127758972444290902L;

    @Override
    public void cancel() {
        lazySet(true);
    }

    public boolean isCancelled() {
        return get();
    }

    @Override
    public void request(long j) {
        SubscriptionHelper.validate(j);
    }

    @Override
    public String toString() {
        return "BooleanSubscription(cancelled=" + get() + ")";
    }
}
