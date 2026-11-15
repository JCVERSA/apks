package com.google.android.libraries.places.internal;

final class zzbfn extends zzbgi {
    final zzbvq zza;
    final zzbfo zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbfn(zzbfo zzbfoVar, zzbvq zzbvqVar) {
        super(zzbfoVar.zza.zzi);
        this.zza = zzbvqVar;
        this.zzb = zzbfoVar;
    }

    @Override
    public final void zza() {
        int i10 = zzbvr.zza;
        zzbfo zzbfoVar = this.zzb;
        if (zzbfoVar.zzc != null) {
            return;
        }
        try {
            zzbfoVar.zzb.zzd();
        } catch (Throwable th2) {
            zzbfo.zzc(this.zzb, zzbdo.zzb.zzf(th2).zzg("Failed to call onReady."));
        }
    }
}
