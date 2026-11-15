package io.reactivex.rxjava3.internal.subscriptions;

import i00.d;
import io.reactivex.rxjava3.disposables.c;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class ArrayCompositeSubscription extends AtomicReferenceArray<d> implements c {
    private static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeSubscription(int i10) {
        super(i10);
    }

    @Override
    public void dispose() {
        d andSet;
        if (get(0) != SubscriptionHelper.CANCELLED) {
            int length = length();
            for (int i10 = 0; i10 < length; i10++) {
                d dVar = get(i10);
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (dVar != subscriptionHelper && (andSet = getAndSet(i10, subscriptionHelper)) != subscriptionHelper && andSet != null) {
                    andSet.cancel();
                }
            }
        }
    }

    @Override
    public boolean isDisposed() {
        return get(0) == SubscriptionHelper.CANCELLED;
    }

    public d replaceResource(int i10, d dVar) {
        d dVar2;
        do {
            dVar2 = get(i10);
            if (dVar2 == SubscriptionHelper.CANCELLED) {
                if (dVar == null) {
                    return null;
                }
                dVar.cancel();
                return null;
            }
        } while (!compareAndSet(i10, dVar2, dVar));
        return dVar2;
    }

    public boolean setResource(int i10, d dVar) {
        d dVar2;
        do {
            dVar2 = get(i10);
            if (dVar2 == SubscriptionHelper.CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
        } while (!compareAndSet(i10, dVar2, dVar));
        if (dVar2 == null) {
            return true;
        }
        dVar2.cancel();
        return true;
    }
}
