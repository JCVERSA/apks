package com.google.android.libraries.places.internal;

final class zzblj extends zzbcr {
    final zzblg zza;
    final zzbcv zzb;
    final zzbma zzc;

    zzblj(zzbma zzbmaVar, zzblg zzblgVar, zzbcv zzbcvVar) {
        this.zzc = zzbmaVar;
        this.zza = zzblgVar;
        zzmt.zzc(zzbcvVar, "resolver");
        this.zzb = zzbcvVar;
    }

    @Override
    public final void zza(zzbdo zzbdoVar) {
        zzmt.zzf(!zzbdoVar.zzl(), "the error status must not be OK");
        zzblh zzblhVar = new zzblh(this, zzbdoVar);
        zzbdw zzbdwVar = this.zzc.zzf;
        zzbdwVar.zzc(zzblhVar);
        zzbdwVar.zzb();
    }

    @Override
    public final void zzb(zzbct zzbctVar) {
        throw null;
    }
}
