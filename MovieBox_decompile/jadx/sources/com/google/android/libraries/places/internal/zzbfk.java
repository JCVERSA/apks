package com.google.android.libraries.places.internal;

final class zzbfk extends zzbgi {
    final zzbvq zza;
    final zzbcf zzb;
    final zzbfo zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbfk(zzbfo zzbfoVar, zzbvq zzbvqVar, zzbcf zzbcfVar) {
        super(zzbfoVar.zza.zzi);
        this.zza = zzbvqVar;
        this.zzb = zzbcfVar;
        this.zzc = zzbfoVar;
    }

    @Override
    public final void zza() {
        int i10 = zzbvr.zza;
        zzbfo zzbfoVar = this.zzc;
        if (zzbfoVar.zzc != null) {
            return;
        }
        try {
            zzbfoVar.zzb.zzb(this.zzb);
        } catch (Throwable th2) {
            zzbfo.zzc(this.zzc, zzbdo.zzb.zzf(th2).zzg("Failed to read headers"));
        }
    }
}
