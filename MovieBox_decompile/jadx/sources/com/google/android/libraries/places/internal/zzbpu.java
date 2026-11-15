package com.google.android.libraries.places.internal;

final class zzbpu extends zzbcr {
    final zzbpv zza;
    private final zzbcr zzb;

    zzbpu(zzbpv zzbpvVar, zzbcr zzbcrVar) {
        this.zza = zzbpvVar;
        this.zzb = zzbcrVar;
    }

    @Override
    public final void zza(zzbdo zzbdoVar) {
        this.zzb.zza(zzbdoVar);
        zzbdw zzbdwVar = this.zza.zzd;
        zzbdwVar.zzc(new Runnable() {
            @Override
            public final void run() {
                zzbpv zzbpvVar = this.zza.zza;
                zzbpvVar.zzc.zzc(new zzbpr(zzbpvVar));
            }
        });
        zzbdwVar.zzb();
    }

    @Override
    public final void zzb(zzbct zzbctVar) {
        zzaye zzayeVarZza = zzbctVar.zza();
        zzayc zzaycVar = zzbpv.zza;
        if (zzayeVarZza.zzc(zzaycVar) != null) {
            throw new IllegalStateException("RetryingNameResolver can only be used once to wrap a NameResolver");
        }
        zzbcr zzbcrVar = this.zzb;
        zzbcs zzbcsVarZzd = zzbctVar.zzd();
        zzayb zzaybVarZzb = zzbctVar.zza().zzb();
        zzaybVarZzb.zzb(zzaycVar, new zzbps(this.zza));
        zzbcsVarZzd.zzb(zzaybVarZzb.zzc());
        zzblj zzbljVar = (zzblj) zzbcrVar;
        zzbli zzbliVar = new zzbli(zzbljVar, zzbcsVarZzd.zzd());
        zzbdw zzbdwVar = zzbljVar.zzc.zzf;
        zzbdwVar.zzc(zzbliVar);
        zzbdwVar.zzb();
    }
}
