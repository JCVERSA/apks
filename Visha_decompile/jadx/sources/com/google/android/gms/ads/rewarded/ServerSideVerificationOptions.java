package com.google.android.gms.ads.rewarded;

import androidx.annotation.NonNull;

public class ServerSideVerificationOptions {
    public final String a;
    public final String b;

    public static final class Builder {
        public String a = "";
        public String b = "";

        @NonNull
        public ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this, null);
        }

        @NonNull
        public Builder setCustomData(@NonNull String str) {
            this.b = str;
            return this;
        }

        @NonNull
        public Builder setUserId(@NonNull String str) {
            this.a = str;
            return this;
        }
    }

    public ServerSideVerificationOptions(Builder builder, zzd zzdVar) {
        this.a = builder.a;
        this.b = builder.b;
    }

    @NonNull
    public String getCustomData() {
        return this.b;
    }

    @NonNull
    public String getUserId() {
        return this.a;
    }
}
