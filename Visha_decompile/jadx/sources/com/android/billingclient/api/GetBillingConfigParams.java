package com.android.billingclient.api;

import androidx.annotation.NonNull;

@zzl
public final class GetBillingConfigParams {

    @zzl
    public static final class Builder {
        private Builder() {
        }

        @NonNull
        public GetBillingConfigParams build() {
            return new GetBillingConfigParams();
        }
    }

    private GetBillingConfigParams() {
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder();
    }
}
