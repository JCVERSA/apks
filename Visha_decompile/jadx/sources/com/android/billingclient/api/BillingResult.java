package com.android.billingclient.api;

import androidx.annotation.NonNull;
import com.google.android.gms.internal.play_billing.a;

public final class BillingResult {
    private int zza;
    private int zzb;
    private String zzc;

    public static class Builder {
        private int zza;
        private int zzb = 0;
        private String zzc = "";

        private Builder() {
        }

        @NonNull
        public BillingResult build() {
            BillingResult billingResult = new BillingResult();
            billingResult.zza = this.zza;
            billingResult.zzb = this.zzb;
            billingResult.zzc = this.zzc;
            return billingResult;
        }

        @NonNull
        public Builder setDebugMessage(@NonNull String str) {
            this.zzc = str;
            return this;
        }

        @NonNull
        @zzp
        public Builder setOnPurchasesUpdatedSubResponseCode(int i) {
            this.zzb = i;
            return this;
        }

        @NonNull
        public Builder setResponseCode(int i) {
            this.zza = i;
            return this;
        }

        public Builder(zzdg zzdgVar) {
        }
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String getDebugMessage() {
        return this.zzc;
    }

    @zzp
    public int getOnPurchasesUpdatedSubResponseCode() {
        return this.zzb;
    }

    public int getResponseCode() {
        return this.zza;
    }

    @NonNull
    public String toString() {
        return "Response Code: " + a.k(this.zza) + ", Debug Message: " + this.zzc;
    }
}
