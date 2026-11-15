package io.reactivex.internal.subscriptions;

import defpackage.f2a;
import defpackage.rc2;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class ArrayCompositeSubscription extends AtomicReferenceArray<f2a> implements rc2 {
    private static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeSubscription(int i) {
        super(i);
    }

    @Override
    public void dispose() {
        f2a andSet;
        if (get(0) != SubscriptionHelper.CANCELLED) {
            int length = length();
            for (int i = 0; i < length; i++) {
                f2a f2aVar = get(i);
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (f2aVar != subscriptionHelper && (andSet = getAndSet(i, subscriptionHelper)) != subscriptionHelper && andSet != null) {
                    andSet.cancel();
                }
            }
        }
    }

    @Override
    public boolean isDisposed() {
        return get(0) == SubscriptionHelper.CANCELLED;
    }

    public f2a replaceResource(int i, f2a f2aVar) {
        f2a f2aVar2;
        do {
            f2aVar2 = get(i);
            if (f2aVar2 == SubscriptionHelper.CANCELLED) {
                if (f2aVar == null) {
                    return null;
                }
                f2aVar.cancel();
                return null;
            }
        } while (!compareAndSet(i, f2aVar2, f2aVar));
        return f2aVar2;
    }

    public boolean setResource(int i, f2a f2aVar) {
        f2a f2aVar2;
        do {
            f2aVar2 = get(i);
            if (f2aVar2 == SubscriptionHelper.CANCELLED) {
                if (f2aVar == null) {
                    return false;
                }
                f2aVar.cancel();
                return false;
            }
        } while (!compareAndSet(i, f2aVar2, f2aVar));
        if (f2aVar2 == null) {
            return true;
        }
        f2aVar2.cancel();
        return true;
    }
}
