package io.reactivex.rxjava3.internal.subscriptions;

import androidx.compose.animation.core.j0;
import i00.d;
import io.reactivex.rxjava3.exceptions.ProtocolViolationException;
import io.reactivex.rxjava3.internal.util.a;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public enum SubscriptionHelper implements d {
    CANCELLED;

    public static void deferredRequest(AtomicReference<d> atomicReference, AtomicLong atomicLong, long j10) {
        d dVar = atomicReference.get();
        if (dVar != null) {
            dVar.request(j10);
            return;
        }
        if (validate(j10)) {
            a.a(atomicLong, j10);
            d dVar2 = atomicReference.get();
            if (dVar2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    dVar2.request(andSet);
                }
            }
        }
    }

    public static boolean deferredSetOnce(AtomicReference<d> atomicReference, AtomicLong atomicLong, d dVar) {
        if (!setOnce(atomicReference, dVar)) {
            return false;
        }
        long andSet = atomicLong.getAndSet(0L);
        if (andSet == 0) {
            return true;
        }
        dVar.request(andSet);
        return true;
    }

    public static boolean replace(AtomicReference<d> atomicReference, d dVar) {
        d dVar2;
        do {
            dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
        } while (!j0.a(atomicReference, dVar2, dVar));
        return true;
    }

    public static void reportMoreProduced(long j10) {
        dy.a.r(new ProtocolViolationException("More produced than requested: " + j10));
    }

    public static void reportSubscriptionSet() {
        dy.a.r(new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean set(AtomicReference<d> atomicReference, d dVar) {
        d dVar2;
        do {
            dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
        } while (!j0.a(atomicReference, dVar2, dVar));
        if (dVar2 == null) {
            return true;
        }
        dVar2.cancel();
        return true;
    }

    public static boolean setOnce(AtomicReference<d> atomicReference, d dVar) {
        Objects.requireNonNull(dVar, "s is null");
        if (j0.a(atomicReference, null, dVar)) {
            return true;
        }
        dVar.cancel();
        if (atomicReference.get() == CANCELLED) {
            return false;
        }
        reportSubscriptionSet();
        return false;
    }

    public static boolean validate(d dVar, d dVar2) {
        if (dVar2 == null) {
            dy.a.r(new NullPointerException("next is null"));
            return false;
        }
        if (dVar == null) {
            return true;
        }
        dVar2.cancel();
        reportSubscriptionSet();
        return false;
    }

    @Override
    public void cancel() {
    }

    @Override
    public void request(long j10) {
    }

    public static boolean cancel(AtomicReference<d> atomicReference) {
        d andSet;
        d dVar = atomicReference.get();
        SubscriptionHelper subscriptionHelper = CANCELLED;
        if (dVar == subscriptionHelper || (andSet = atomicReference.getAndSet(subscriptionHelper)) == subscriptionHelper) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.cancel();
        return true;
    }

    public static boolean validate(long j10) {
        if (j10 > 0) {
            return true;
        }
        dy.a.r(new IllegalArgumentException("n > 0 required but it was " + j10));
        return false;
    }

    public static boolean setOnce(AtomicReference<d> atomicReference, d dVar, long j10) {
        if (!setOnce(atomicReference, dVar)) {
            return false;
        }
        dVar.request(j10);
        return true;
    }
}
