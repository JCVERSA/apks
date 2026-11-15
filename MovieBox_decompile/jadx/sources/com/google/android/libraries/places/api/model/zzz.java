package com.google.android.libraries.places.api.model;

import androidx.annotation.Nullable;

final class zzz extends PlusCode.Builder {
    private String zza;
    private String zzb;

    zzz() {
    }

    @Override
    public final PlusCode build() {
        return new zzbo(this.zza, this.zzb);
    }

    @Override
    @Nullable
    public final String getCompoundCode() {
        return this.zza;
    }

    @Override
    @Nullable
    public final String getGlobalCode() {
        return this.zzb;
    }

    @Override
    public final PlusCode.Builder setCompoundCode(@Nullable String str) {
        this.zza = str;
        return this;
    }

    @Override
    public final PlusCode.Builder setGlobalCode(@Nullable String str) {
        this.zzb = str;
        return this;
    }
}
