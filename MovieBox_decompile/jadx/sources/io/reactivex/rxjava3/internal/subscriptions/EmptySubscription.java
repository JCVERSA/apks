package io.reactivex.rxjava3.internal.subscriptions;

import i00.c;
import io.reactivex.rxjava3.operators.d;

public enum EmptySubscription implements d {
    INSTANCE;

    public static void complete(c cVar) {
        cVar.onSubscribe(INSTANCE);
        cVar.onComplete();
    }

    public static void error(Throwable th2, c cVar) {
        cVar.onSubscribe(INSTANCE);
        cVar.onError(th2);
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
    public void request(long j10) {
        SubscriptionHelper.validate(j10);
    }

    @Override
    public int requestFusion(int i10) {
        return i10 & 2;
    }

    @Override
    public String toString() {
        return "EmptySubscription";
    }

    public boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
