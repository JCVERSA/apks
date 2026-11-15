package io.reactivex.rxjava3.internal.subscriptions;

import i00.d;
import java.util.concurrent.atomic.AtomicBoolean;

public final class BooleanSubscription extends AtomicBoolean implements d {
    private static final long serialVersionUID = -8127758972444290902L;

    @Override
    public void cancel() {
        lazySet(true);
    }

    public boolean isCancelled() {
        return get();
    }

    @Override
    public void request(long j10) {
        SubscriptionHelper.validate(j10);
    }

    @Override
    public String toString() {
        return "BooleanSubscription(cancelled=" + get() + ")";
    }
}
