package com.mbridge.msdk.dycreator.bus;

import java.util.ArrayList;
import java.util.List;

final class PendingPost {

    private static final List<PendingPost> f33971d = new ArrayList();

    Object f33972a;

    Subscription f33973b;

    PendingPost f33974c;

    private PendingPost(Object obj, Subscription subscription) {
        this.f33972a = obj;
        this.f33973b = subscription;
    }

    static PendingPost a(Subscription subscription, Object obj) {
        List<PendingPost> list = f33971d;
        synchronized (list) {
            try {
                int size = list.size();
                if (size <= 0) {
                    return new PendingPost(obj, subscription);
                }
                PendingPost pendingPostRemove = list.remove(size - 1);
                pendingPostRemove.f33972a = obj;
                pendingPostRemove.f33973b = subscription;
                pendingPostRemove.f33974c = null;
                return pendingPostRemove;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static void a(PendingPost pendingPost) {
        pendingPost.f33972a = null;
        pendingPost.f33973b = null;
        pendingPost.f33974c = null;
        List<PendingPost> list = f33971d;
        synchronized (list) {
            try {
                if (list.size() < 10000) {
                    list.add(pendingPost);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
