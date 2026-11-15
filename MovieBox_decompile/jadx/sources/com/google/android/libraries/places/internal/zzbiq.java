package com.google.android.libraries.places.internal;

class zzbiq extends zzbbr {
    private final zzbbr zza;

    zzbiq(zzbbr zzbbrVar) {
        this.zza = zzbbrVar;
    }

    public final String toString() {
        zzmm zzmmVarZzb = zzmn.zzb(this);
        zzmmVarZzb.zzd("delegate", this.zza);
        return zzmmVarZzb.toString();
    }

    @Override
    public final zzayo zza(zzbcl zzbclVar, zzayj zzayjVar) {
        return this.zza.zza(zzbclVar, zzayjVar);
    }

    @Override
    public final String zzb() {
        return this.zza.zzb();
    }
}
