package com.mbridge.msdk.dycreator.bus;

final class PendingPostQueue {

    private PendingPost f33975a;

    private PendingPost f33976b;

    PendingPostQueue() {
    }

    synchronized void a(PendingPost pendingPost) {
        try {
            if (pendingPost == null) {
                throw new NullPointerException("null cannot be enqueued");
            }
            PendingPost pendingPost2 = this.f33976b;
            if (pendingPost2 != null) {
                pendingPost2.f33974c = pendingPost;
                this.f33976b = pendingPost;
            } else {
                if (this.f33975a != null) {
                    throw new IllegalStateException("Head present, but no tail");
                }
                this.f33976b = pendingPost;
                this.f33975a = pendingPost;
            }
            notifyAll();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    synchronized PendingPost a() {
        PendingPost pendingPost;
        pendingPost = this.f33975a;
        if (pendingPost != null) {
            PendingPost pendingPost2 = pendingPost.f33974c;
            this.f33975a = pendingPost2;
            if (pendingPost2 == null) {
                this.f33976b = null;
            }
        }
        return pendingPost;
    }

    synchronized PendingPost a(int i10) throws InterruptedException {
        try {
            if (this.f33975a == null) {
                wait(i10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return a();
    }
}
