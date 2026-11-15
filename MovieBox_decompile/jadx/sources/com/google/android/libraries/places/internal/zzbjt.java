package com.google.android.libraries.places.internal;

final class zzbjt extends zzbin {
    final zzbfr zza;
    final zzbjv zzb;

    zzbjt(zzbjv zzbjvVar, zzbfr zzbfrVar) {
        this.zza = zzbfrVar;
        this.zzb = zzbjvVar;
    }

    @Override
    protected final zzbfr zza() {
        return this.zza;
    }

    @Override
    public final void zzo(zzbft zzbftVar) {
        this.zzb.zzb.zzb();
        this.zza.zzo(new zzbjs(this, zzbftVar));
    }
}
