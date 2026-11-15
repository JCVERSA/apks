package com.mbridge.msdk.dycreator.bus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

final class HandlerPoster extends Handler {

    private final PendingPostQueue f33967a;

    private final int f33968b;

    private final EventBus f33969c;

    private boolean f33970d;

    HandlerPoster(EventBus eventBus, Looper looper, int i10) {
        super(looper);
        this.f33969c = eventBus;
        this.f33968b = i10;
        this.f33967a = new PendingPostQueue();
    }

    void a(Subscription subscription, Object obj) {
        PendingPost pendingPostA = PendingPost.a(subscription, obj);
        synchronized (this) {
            try {
                this.f33967a.a(pendingPostA);
                if (!this.f33970d) {
                    this.f33970d = true;
                    if (!sendMessage(obtainMessage())) {
                        throw new EventBusException("Could not send handler message");
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                PendingPost pendingPostA = this.f33967a.a();
                if (pendingPostA == null) {
                    synchronized (this) {
                        pendingPostA = this.f33967a.a();
                        if (pendingPostA == null) {
                            this.f33970d = false;
                            return;
                        }
                    }
                }
                this.f33969c.a(pendingPostA);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f33968b);
            if (!sendMessage(obtainMessage())) {
                throw new EventBusException("Could not send handler message");
            }
            this.f33970d = true;
        } catch (Throwable th2) {
            this.f33970d = false;
            throw th2;
        }
    }
}
