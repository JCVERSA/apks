package app.fast.ssh;

import android.content.Context;

public final class Subscription {
    private final BillingManager.SubscriptionStore store;

    public Subscription(Context context) {
        this.store = new PrefsSubscriptionStore(context);
    }

    public Subscription(BillingManager.SubscriptionStore subscriptionStore) {
        this.store = subscriptionStore;
    }

    public boolean isActive() {
        String subscriptionToken = this.store.getSubscriptionToken();
        return (subscriptionToken == null || subscriptionToken.isEmpty()) ? false : true;
    }

    public boolean shouldRequestAds() {
        return !isActive();
    }

    public boolean shouldShowAddTime() {
        return !isActive();
    }

    public boolean shouldShowTimer() {
        return !isActive();
    }

    public String token() {
        return this.store.getSubscriptionToken();
    }
}
