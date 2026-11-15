package com.google.android.libraries.places.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.libraries.places.api.model.AutocompletePrediction;
import com.google.android.libraries.places.api.model.Place;
import java.util.List;

final class zzkn extends zzku {
    private String zza;
    private zznx zzb;
    private Place zzc;
    private AutocompletePrediction zzd;
    private Status zze;
    private int zzf;

    zzkn() {
    }

    @Override
    public final zzku zza(Place place) {
        this.zzc = place;
        return this;
    }

    @Override
    public final zzku zzb(AutocompletePrediction autocompletePrediction) {
        this.zzd = autocompletePrediction;
        return this;
    }

    @Override
    public final zzku zzc(List list) {
        this.zzb = zznx.zzj(list);
        return this;
    }

    @Override
    public final zzku zzd(String str) {
        this.zza = str;
        return this;
    }

    @Override
    public final zzku zze(Status status) {
        this.zze = status;
        return this;
    }

    @Override
    public final zzkv zzf() {
        int i10 = this.zzf;
        if (i10 != 0) {
            return new zzkp(i10, this.zza, this.zzb, this.zzc, this.zzd, this.zze, null);
        }
        throw new IllegalStateException("Missing required properties: type");
    }

    public final zzku zzg(int i10) {
        this.zzf = i10;
        return this;
    }
}
