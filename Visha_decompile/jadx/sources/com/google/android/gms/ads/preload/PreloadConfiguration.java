package com.google.android.gms.ads.preload;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;

public class PreloadConfiguration {
    public final String a;
    public final AdFormat b;
    public final AdRequest c;
    public final int d;

    public static class Builder {
        public final String a;
        public final AdFormat b;
        public AdRequest c = new AdRequest.Builder().build();
        public int d;

        public Builder(@NonNull String str, @NonNull AdFormat adFormat) {
            this.a = str;
            this.b = adFormat;
        }

        @NonNull
        public PreloadConfiguration build() {
            return new PreloadConfiguration(this, null);
        }

        @NonNull
        public Builder setAdRequest(@NonNull AdRequest adRequest) {
            this.c = adRequest;
            return this;
        }

        @NonNull
        public Builder setBufferSize(int i) {
            this.d = i;
            return this;
        }
    }

    public PreloadConfiguration(Builder builder, zza zzaVar) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
    }

    @NonNull
    public AdFormat getAdFormat() {
        return this.b;
    }

    @NonNull
    public AdRequest getAdRequest() {
        return this.c;
    }

    @NonNull
    public String getAdUnitId() {
        return this.a;
    }

    public int getBufferSize() {
        return this.d;
    }
}
