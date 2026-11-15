package com.google.android.libraries.places.api.model;

import androidx.annotation.Nullable;

final class zzs extends Period.Builder {
    private TimeOfWeek zza;
    private TimeOfWeek zzb;

    zzs() {
    }

    @Override
    public final Period build() {
        return new zzbg(this.zza, this.zzb);
    }

    @Override
    @Nullable
    public final TimeOfWeek getClose() {
        return this.zzb;
    }

    @Override
    @Nullable
    public final TimeOfWeek getOpen() {
        return this.zza;
    }

    @Override
    public final Period.Builder setClose(@Nullable TimeOfWeek timeOfWeek) {
        this.zzb = timeOfWeek;
        return this;
    }

    @Override
    public final Period.Builder setOpen(@Nullable TimeOfWeek timeOfWeek) {
        this.zza = timeOfWeek;
        return this;
    }
}
