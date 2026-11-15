package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class BillingProgramReportingDetailsParams {
    private final int zza;
    private final int zzb;

    public static final class Builder {
        private int zza = 0;
        private int zzb = 0;

        private Builder() {
        }

        @NonNull
        public BillingProgramReportingDetailsParams build() {
            int i = this.zza;
            if (i == 0) {
                throw new IllegalArgumentException("Billing program is not specified.");
            }
            if (i == 5 && this.zzb == 0) {
                throw new IllegalArgumentException("Developer billing type must be specified for billing choice.");
            }
            return new BillingProgramReportingDetailsParams(this, null);
        }

        @NonNull
        public Builder setBillingProgram(int i) {
            this.zza = i;
            return this;
        }

        @NonNull
        @zze
        public Builder setDeveloperBillingType(int i) {
            this.zzb = i;
            return this;
        }

        public Builder(zzdf zzdfVar) {
        }
    }

    @zze
    @Retention(RetentionPolicy.SOURCE)
    public @interface DeveloperBillingType {
        public static final int DEVELOPER_BILLING_TYPE_UNSPECIFIED = 0;
        public static final int EXTERNAL_LINK = 2;
        public static final int IN_APP = 1;
    }

    public BillingProgramReportingDetailsParams(Builder builder, zzdf zzdfVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    public int getBillingProgram() {
        return this.zza;
    }

    @zze
    public int getDeveloperBillingType() {
        return this.zzb;
    }
}
