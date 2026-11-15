package com.android.billingclient.api;

import androidx.annotation.NonNull;

@zze
public final class BillingProgramInformationDialogParams {
    private final int billingProgram;
    private final String externalTransactionToken;

    public static final class Builder {
        private int zza;
        private String zzb;

        private Builder() {
            throw null;
        }

        @NonNull
        public BillingProgramInformationDialogParams build() {
            int i = this.zza;
            if (i == 0) {
                throw new IllegalArgumentException("Billing program must be set.");
            }
            if (i != 5) {
                throw new IllegalArgumentException("The requested billing program is not supported for the billing program information dialog API.");
            }
            if (this.zzb != null) {
                return new BillingProgramInformationDialogParams(this);
            }
            throw new IllegalArgumentException("External transaction token must be set.");
        }

        @NonNull
        public Builder setBillingProgram(int i) {
            this.zza = i;
            return this;
        }

        @NonNull
        public Builder setExternalTransactionToken(@NonNull String str) {
            this.zzb = str;
            return this;
        }

        public Builder(zzde zzdeVar) {
        }
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    public int getBillingProgram() {
        return this.billingProgram;
    }

    @NonNull
    public String getExternalTransactionToken() {
        return this.externalTransactionToken;
    }

    private BillingProgramInformationDialogParams(Builder builder) {
        this.billingProgram = builder.zza;
        this.externalTransactionToken = builder.zzb;
    }
}
