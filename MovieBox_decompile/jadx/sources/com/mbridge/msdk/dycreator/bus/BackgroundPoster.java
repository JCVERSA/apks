package com.mbridge.msdk.dycreator.bus;

import android.util.Log;

final class BackgroundPoster implements Runnable {

    private final PendingPostQueue f33944a = new PendingPostQueue();

    private volatile boolean f33945b;

    private final EventBus f33946c;

    BackgroundPoster(EventBus eventBus) {
        this.f33946c = eventBus;
    }

    public void enqueue(Subscription subscription, Object obj) {
        PendingPost pendingPostA = PendingPost.a(subscription, obj);
        synchronized (this) {
            try {
                this.f33944a.a(pendingPostA);
                if (!this.f33945b) {
                    this.f33945b = true;
                    EventBus.f33947n.execute(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void run() {
        while (true) {
            try {
                try {
                    PendingPost pendingPostA = this.f33944a.a(1000);
                    if (pendingPostA == null) {
                        synchronized (this) {
                            pendingPostA = this.f33944a.a();
                            if (pendingPostA == null) {
                                this.f33945b = false;
                                this.f33945b = false;
                                return;
                            }
                        }
                    }
                    this.f33946c.a(pendingPostA);
                } catch (InterruptedException e10) {
                    Log.w("Event", Thread.currentThread().getName() + " was interruppted", e10);
                    this.f33945b = false;
                    return;
                }
            } catch (Throwable th2) {
                this.f33945b = false;
                throw th2;
            }
        }
    }
}
