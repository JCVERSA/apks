package com.google.android.libraries.places.api.model;

import androidx.annotation.Nullable;

final class zzd extends AuthorAttribution.Builder {
    private String zza;
    private String zzb;
    private String zzc;

    zzd() {
    }

    @Override
    @Nullable
    public final String getPhotoUri() {
        return this.zzc;
    }

    @Override
    @Nullable
    public final String getUri() {
        return this.zzb;
    }

    @Override
    public final AuthorAttribution.Builder setPhotoUri(@Nullable String str) {
        this.zzc = str;
        return this;
    }

    @Override
    public final AuthorAttribution.Builder setUri(@Nullable String str) {
        this.zzb = str;
        return this;
    }

    final AuthorAttribution.Builder zza(String str) {
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        this.zza = str;
        return this;
    }

    @Override
    final AuthorAttribution zzb() {
        String str = this.zza;
        if (str != null) {
            return new zzao(str, this.zzb, this.zzc);
        }
        throw new IllegalStateException("Missing required properties: name");
    }
}
