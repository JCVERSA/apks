package com.mbridge.msdk.dycreator.bus;

class AsyncPoster implements Runnable {

    private final PendingPostQueue f33942a = new PendingPostQueue();

    private final EventBus f33943b;

    AsyncPoster(EventBus eventBus) {
        this.f33943b = eventBus;
    }

    public void enqueue(Subscription subscription, Object obj) {
        this.f33942a.a(PendingPost.a(subscription, obj));
        EventBus.f33947n.execute(this);
    }

    @Override
    public void run() {
        PendingPost pendingPostA = this.f33942a.a();
        if (pendingPostA == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.f33943b.a(pendingPostA);
    }
}
