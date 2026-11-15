package com.google.android.gms.ads.admanager;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AbstractAdRequestBuilder;
import com.google.android.gms.ads.AdRequest;

public final class AdManagerAdRequest extends AdRequest {

    public static final class Builder extends AbstractAdRequestBuilder<Builder> {
        @NonNull
        public Builder addCategoryExclusion(@NonNull String str) {
            this.a.zzn(str);
            return this;
        }

        @NonNull
        public AdManagerAdRequest build() {
            return new AdManagerAdRequest(this, null);
        }

        @Override
        @NonNull
        public final AbstractAdRequestBuilder self() {
            return this;
        }

        @NonNull
        public Builder setPublisherProvidedId(@NonNull String str) {
            this.a.zzA(str);
            return this;
        }

        @Override
        @NonNull
        public Builder self() {
            return this;
        }
    }

    public AdManagerAdRequest(Builder builder, zza zzaVar) {
        super(builder);
    }

    @Override
    @NonNull
    public Bundle getCustomTargeting() {
        return this.a.zze();
    }

    @NonNull
    public String getPublisherProvidedId() {
        return this.a.zzj();
    }
}
