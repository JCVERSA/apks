package com.google.android.libraries.places.internal;

final class zzbfm extends zzbgi {
    final zzbvq zza;
    final zzbdo zzb;
    final zzbcf zzc;
    final zzbfo zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbfm(zzbfo zzbfoVar, zzbvq zzbvqVar, zzbdo zzbdoVar, zzbcf zzbcfVar) {
        super(zzbfoVar.zza.zzi);
        this.zza = zzbvqVar;
        this.zzb = zzbdoVar;
        this.zzc = zzbcfVar;
        this.zzd = zzbfoVar;
    }

    @Override
    public final void zza() {
        int i10 = zzbvr.zza;
        this.zzd.zza.zzj.zzd();
        zzbdo zzbdoVar = this.zzb;
        zzbcf zzbcfVar = this.zzc;
        zzbfo zzbfoVar = this.zzd;
        if (zzbfoVar.zzc != null) {
            zzbdoVar = zzbfoVar.zzc;
            zzbcfVar = new zzbcf();
        }
        try {
            this.zzd.zzb.zza(zzbdoVar, zzbcfVar);
        } finally {
            this.zzd.zza.zzh.zza(zzbdoVar.zzl());
        }
    }
}
