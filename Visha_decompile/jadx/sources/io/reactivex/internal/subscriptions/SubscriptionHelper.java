package io.reactivex.internal.subscriptions;

import defpackage.ac7;
import defpackage.f2a;
import defpackage.i50;
import defpackage.wk5;
import defpackage.yw8;
import io.reactivex.exceptions.ProtocolViolationException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public enum SubscriptionHelper implements f2a {
    CANCELLED;

    public static void deferredRequest(AtomicReference<f2a> atomicReference, AtomicLong atomicLong, long j) {
        f2a f2aVar = atomicReference.get();
        if (f2aVar != null) {
            f2aVar.request(j);
            return;
        }
        if (validate(j)) {
            i50.a(atomicLong, j);
            f2a f2aVar2 = atomicReference.get();
            if (f2aVar2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    f2aVar2.request(andSet);
                }
            }
        }
    }

    public static boolean deferredSetOnce(AtomicReference<f2a> atomicReference, AtomicLong atomicLong, f2a f2aVar) {
        if (!setOnce(atomicReference, f2aVar)) {
            return false;
        }
        long andSet = atomicLong.getAndSet(0L);
        if (andSet == 0) {
            return true;
        }
        f2aVar.request(andSet);
        return true;
    }

    public static boolean replace(AtomicReference<f2a> atomicReference, f2a f2aVar) {
        f2a f2aVar2;
        do {
            f2aVar2 = atomicReference.get();
            if (f2aVar2 == CANCELLED) {
                if (f2aVar == null) {
                    return false;
                }
                f2aVar.cancel();
                return false;
            }
        } while (!wk5.a(atomicReference, f2aVar2, f2aVar));
        return true;
    }

    public static void reportMoreProduced(long j) {
        yw8.s(new ProtocolViolationException("More produced than requested: " + j));
    }

    public static void reportSubscriptionSet() {
        yw8.s(new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean set(AtomicReference<f2a> atomicReference, f2a f2aVar) {
        f2a f2aVar2;
        do {
            f2aVar2 = atomicReference.get();
            if (f2aVar2 == CANCELLED) {
                if (f2aVar == null) {
                    return false;
                }
                f2aVar.cancel();
                return false;
            }
        } while (!wk5.a(atomicReference, f2aVar2, f2aVar));
        if (f2aVar2 == null) {
            return true;
        }
        f2aVar2.cancel();
        return true;
    }

    public static boolean setOnce(AtomicReference<f2a> atomicReference, f2a f2aVar) {
        ac7.d(f2aVar, "s is null");
        if (wk5.a(atomicReference, null, f2aVar)) {
            return true;
        }
        f2aVar.cancel();
        if (atomicReference.get() == CANCELLED) {
            return false;
        }
        reportSubscriptionSet();
        return false;
    }

    public static boolean validate(f2a f2aVar, f2a f2aVar2) {
        if (f2aVar2 == null) {
            yw8.s(new NullPointerException("next is null"));
            return false;
        }
        if (f2aVar == null) {
            return true;
        }
        f2aVar2.cancel();
        reportSubscriptionSet();
        return false;
    }

    @Override
    public void cancel() {
    }

    @Override
    public void request(long j) {
    }

    public static boolean cancel(AtomicReference<f2a> atomicReference) {
        f2a andSet;
        f2a f2aVar = atomicReference.get();
        SubscriptionHelper subscriptionHelper = CANCELLED;
        if (f2aVar == subscriptionHelper || (andSet = atomicReference.getAndSet(subscriptionHelper)) == subscriptionHelper) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.cancel();
        return true;
    }

    public static boolean validate(long j) {
        if (j > 0) {
            return true;
        }
        yw8.s(new IllegalArgumentException("n > 0 required but it was " + j));
        return false;
    }

    public static boolean setOnce(AtomicReference<f2a> atomicReference, f2a f2aVar, long j) {
        if (!setOnce(atomicReference, f2aVar)) {
            return false;
        }
        f2aVar.request(j);
        return true;
    }
}
