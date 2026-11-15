package com.android.billingclient.api;

import androidx.annotation.NonNull;

@zzt
public final class PendingPurchasesParams {
    private final boolean enableOneTimeProducts;
    private final boolean enablePrepaidPlans;

    @zzt
    public static final class Builder {
        private boolean enableOneTimeProducts;
        private boolean enablePrepaidPlans;

        private Builder() {
        }

        @NonNull
        public PendingPurchasesParams build() {
            if (!this.enableOneTimeProducts) {
                throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
            }
            return new PendingPurchasesParams(true, this.enablePrepaidPlans);
        }

        @NonNull
        public Builder enableOneTimeProducts() {
            this.enableOneTimeProducts = true;
            return this;
        }

        @NonNull
        public Builder enablePrepaidPlans() {
            this.enablePrepaidPlans = true;
            return this;
        }
    }

    private PendingPurchasesParams(boolean z, boolean z2) {
        this.enableOneTimeProducts = z;
        this.enablePrepaidPlans = z2;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean isEnabledForOneTimeProducts() {
        return this.enableOneTimeProducts;
    }

    public boolean isEnabledForPrepaidPlans() {
        return this.enablePrepaidPlans;
    }
}
