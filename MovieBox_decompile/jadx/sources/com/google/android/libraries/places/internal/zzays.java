package com.google.android.libraries.places.internal;

final class zzays extends zzayk {
    private final zzayk zza;
    private final zzayp zzb;

    zzays(zzayk zzaykVar, zzayp zzaypVar, zzayr zzayrVar) {
        this.zza = zzaykVar;
        zzmt.zzc(zzaypVar, "interceptor");
        this.zzb = zzaypVar;
    }

    @Override
    public final zzayo zza(zzbcl zzbclVar, zzayj zzayjVar) {
        return this.zzb.zza(zzbclVar, zzayjVar, this.zza);
    }

    @Override
    public final String zzb() {
        return this.zza.zzb();
    }
}
