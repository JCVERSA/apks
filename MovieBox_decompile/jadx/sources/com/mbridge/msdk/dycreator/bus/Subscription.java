package com.mbridge.msdk.dycreator.bus;

final class Subscription {

    final Object f33983a;

    final SubscriberMethod f33984b;

    Subscription(Object obj, SubscriberMethod subscriberMethod) {
        this.f33983a = obj;
        this.f33984b = subscriberMethod;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Subscription)) {
            return false;
        }
        Subscription subscription = (Subscription) obj;
        return this.f33983a == subscription.f33983a && this.f33984b.equals(subscription.f33984b);
    }

    public int hashCode() {
        return this.f33983a.hashCode() + this.f33984b.f33980d.hashCode();
    }
}
