package io.reactivex.internal.subscriptions;

import defpackage.d2a;
import defpackage.tm8;

public enum EmptySubscription implements tm8 {
    INSTANCE;

    public static void complete(d2a d2aVar) {
        d2aVar.onSubscribe(INSTANCE);
        d2aVar.onComplete();
    }

    public static void error(Throwable th, d2a d2aVar) {
        d2aVar.onSubscribe(INSTANCE);
        d2aVar.onError(th);
    }

    @Override
    public void cancel() {
    }

    @Override
    public void clear() {
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    public boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    public Object poll() {
        return null;
    }

    @Override
    public void request(long j) {
        SubscriptionHelper.validate(j);
    }

    @Override
    public int requestFusion(int i) {
        return i & 2;
    }

    @Override
    public String toString() {
        return "EmptySubscription";
    }

    public boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
