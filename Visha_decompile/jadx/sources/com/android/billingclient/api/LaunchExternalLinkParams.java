package com.android.billingclient.api;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@zzn
public final class LaunchExternalLinkParams {
    private final Uri zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;

    @Nullable
    private final String zze;

    @zzn
    public static final class Builder {
        private Uri zza;
        private int zzb = 0;
        private int zzc = 0;
        private int zzd = 0;

        @Nullable
        private String zze;

        private Builder() {
        }

        @NonNull
        @zzn
        public LaunchExternalLinkParams build() {
            int i = this.zzc;
            if (i == 0) {
                throw new IllegalArgumentException("Link type is required.");
            }
            int i2 = this.zzb;
            if (i2 == 0) {
                throw new IllegalArgumentException("Launch mode is required.");
            }
            if (i2 != 1 && i == 2) {
                throw new IllegalArgumentException("App downloads must launch in an external browser or app.");
            }
            int i3 = this.zzd;
            if (i3 == 0) {
                throw new IllegalArgumentException("Billing program is required.");
            }
            if (i3 == 5) {
                if (TextUtils.isEmpty(this.zze)) {
                    throw new IllegalArgumentException("External transaction token is required for billing choice with an external link.");
                }
                if (this.zzc != 1) {
                    throw new IllegalArgumentException("Link type must be LINK_TO_DIGITAL_CONTENT_OFFER for billing choice with an external link.");
                }
            }
            Uri uri = this.zza;
            if (uri == null) {
                throw new IllegalArgumentException("URI must be set.");
            }
            if (uri.getScheme() != null) {
                return new LaunchExternalLinkParams(this, null);
            }
            throw new IllegalArgumentException("URI must have a scheme.");
        }

        @NonNull
        @zzn
        public Builder setBillingProgram(int i) {
            this.zzd = i;
            return this;
        }

        @NonNull
        @zze
        public Builder setExternalTransactionToken(@NonNull String str) {
            this.zze = str;
            return this;
        }

        @NonNull
        @zzn
        public Builder setLaunchMode(int i) {
            this.zzb = i;
            return this;
        }

        @NonNull
        @zzn
        public Builder setLinkType(int i) {
            this.zzc = i;
            return this;
        }

        @NonNull
        @zzn
        public Builder setLinkUri(@NonNull Uri uri) {
            this.zza = uri;
            return this;
        }

        public Builder(zzea zzeaVar) {
        }
    }

    @zzn
    @Retention(RetentionPolicy.SOURCE)
    public @interface LaunchMode {

        @zzn
        public static final int CALLER_WILL_LAUNCH_LINK = 2;

        @zzn
        public static final int LAUNCH_IN_EXTERNAL_BROWSER_OR_APP = 1;

        @zzn
        public static final int LAUNCH_MODE_UNSPECIFIED = 0;
    }

    @zzn
    @Retention(RetentionPolicy.SOURCE)
    public @interface LinkType {

        @zzo
        public static final int LINK_TO_APP_DOWNLOAD = 2;

        @zzn
        public static final int LINK_TO_DIGITAL_CONTENT_OFFER = 1;

        @zzn
        public static final int LINK_TYPE_UNSPECIFIED = 0;
    }

    public LaunchExternalLinkParams(Builder builder, zzea zzeaVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
    }

    @NonNull
    @zzn
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @zzn
    public int getBillingProgram() {
        return this.zzd;
    }

    @Nullable
    @zze
    public String getExternalTransactionToken() {
        return this.zze;
    }

    @zzn
    public int getLaunchMode() {
        return this.zzb;
    }

    @zzn
    public int getLinkType() {
        return this.zzc;
    }

    @NonNull
    @zzn
    public Uri getLinkUri() {
        return this.zza;
    }
}
