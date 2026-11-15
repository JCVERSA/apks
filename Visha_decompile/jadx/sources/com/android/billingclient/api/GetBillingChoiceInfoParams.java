package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;

@zze
public final class GetBillingChoiceInfoParams {
    private final int billingProgram;

    @NonNull
    private final String playBillingChoiceImageLayout;

    @Nullable
    private final Locale userLocale;

    public static final class Builder {

        @Nullable
        private Locale zza;
        private int zzb = 0;

        @NonNull
        private String zzc;

        private Builder() {
        }

        @NonNull
        public GetBillingChoiceInfoParams build() {
            if (this.zzb != 5) {
                throw new IllegalArgumentException("Only billing choice is allowed for this API.");
            }
            if (this.zzc != null) {
                return new GetBillingChoiceInfoParams(this);
            }
            throw new IllegalArgumentException("Play Billing choice image layout is required.");
        }

        @NonNull
        public Builder setBillingProgram(int i) {
            this.zzb = i;
            return this;
        }

        @NonNull
        public Builder setPlayBillingChoiceImageLayout(@NonNull String str) {
            this.zzc = str;
            return this;
        }

        @NonNull
        public Builder setUserLocale(@Nullable Locale locale) {
            this.zza = locale;
            return this;
        }

        public Builder(zzdw zzdwVar) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ImageLayout {

        @NonNull
        public static final String RECTANGULAR_FOUR_BY_ONE = "RECTANGULAR_FOUR_BY_ONE";

        @NonNull
        public static final String RECTANGULAR_THREE_BY_ONE = "RECTANGULAR_THREE_BY_ONE";

        @NonNull
        public static final String RECTANGULAR_TWO_BY_TWO = "RECTANGULAR_TWO_BY_TWO";
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    public int getBillingProgram() {
        return this.billingProgram;
    }

    @NonNull
    public String getPlayBillingChoiceImageLayout() {
        return this.playBillingChoiceImageLayout;
    }

    @Nullable
    public Locale getUserLocale() {
        return this.userLocale;
    }

    private GetBillingChoiceInfoParams(Builder builder) {
        this.userLocale = builder.zza;
        this.billingProgram = builder.zzb;
        this.playBillingChoiceImageLayout = builder.zzc;
    }
}
