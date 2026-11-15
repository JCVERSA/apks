package io.reactivex.internal.subscribers;

import defpackage.f2a;
import defpackage.y14;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

public final class BlockingSubscriber<T> extends AtomicReference<f2a> implements y14, f2a {
    public static final Object TERMINATED = new Object();
    private static final long serialVersionUID = -4875965440900746268L;
    final Queue<Object> queue;

    public BlockingSubscriber(Queue<Object> queue) {
        this.queue = queue;
    }

    @Override
    public void cancel() {
        if (SubscriptionHelper.cancel(this)) {
            this.queue.offer(TERMINATED);
        }
    }

    public boolean isCancelled() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override
    public void onComplete() {
        this.queue.offer(NotificationLite.complete());
    }

    @Override
    public void onError(Throwable th) {
        this.queue.offer(NotificationLite.error(th));
    }

    @Override
    public void onNext(T t) {
        this.queue.offer(NotificationLite.next(t));
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.setOnce(this, f2aVar)) {
            this.queue.offer(NotificationLite.subscription(this));
        }
    }

    @Override
    public void request(long j) {
        get().request(j);
    }
}
