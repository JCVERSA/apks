package com.android.billingclient.api;

import androidx.annotation.NonNull;

public final class QueryPurchasesParams {
    private final String zza;
    private final boolean zzb;

    public static class Builder {
        private String zza;
        private boolean zzb = false;

        private Builder() {
        }

        @NonNull
        public QueryPurchasesParams build() {
            String str = this.zza;
            if (str == null) {
                throw new IllegalArgumentException("Product type must be set");
            }
            if (!this.zzb || str.equals(BillingClient.ProductType.SUBS)) {
                return new QueryPurchasesParams(this, null);
            }
            throw new IllegalArgumentException("includeSuspendedSubscriptions is only supported for subscription purchases");
        }

        @NonNull
        public Builder includeSuspendedSubscriptions(boolean z) {
            this.zzb = z;
            return this;
        }

        @NonNull
        public Builder setProductType(@NonNull String str) {
            this.zza = str;
            return this;
        }

        public Builder(zzen zzenVar) {
        }
    }

    public QueryPurchasesParams(Builder builder, zzen zzenVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    public boolean getIncludeSuspendedSubscriptions() {
        return this.zzb;
    }

    @NonNull
    public final String zza() {
        return this.zza;
    }
}
