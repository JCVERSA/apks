package com.google.android.libraries.places.internal;

abstract class zzbip implements zzbgf {
    zzbip() {
    }

    public final String toString() {
        zzmm zzmmVarZzb = zzmn.zzb(this);
        zzmmVarZzb.zzd("delegate", zzb());
        return zzmmVarZzb.toString();
    }

    @Override
    public zzbfr zza(zzbcl zzbclVar, zzbcf zzbcfVar, zzayj zzayjVar, zzayx[] zzayxVarArr) {
        throw null;
    }

    protected abstract zzbgf zzb();

    @Override
    public final zzbap zzc() {
        return zzb().zzc();
    }

    @Override
    public void zzd(zzbdo zzbdoVar) {
        zzb().zzd(zzbdoVar);
    }

    @Override
    public final zzaye zze() {
        return zzb().zze();
    }

    @Override
    public final Runnable zzj(zzbmk zzbmkVar) {
        zzb().zzj(zzbmkVar);
        return null;
    }
}
