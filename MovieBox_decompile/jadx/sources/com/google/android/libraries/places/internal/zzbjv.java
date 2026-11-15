package com.google.android.libraries.places.internal;

final class zzbjv extends zzbip {
    private final zzbgf zza;
    private final zzbfg zzb;

    zzbjv(zzbgf zzbgfVar, zzbfg zzbfgVar, zzbju zzbjuVar) {
        this.zza = zzbgfVar;
        this.zzb = zzbfgVar;
    }

    @Override
    public final zzbfr zza(zzbcl zzbclVar, zzbcf zzbcfVar, zzayj zzayjVar, zzayx[] zzayxVarArr) {
        return new zzbjt(this, this.zza.zza(zzbclVar, zzbcfVar, zzayjVar, zzayxVarArr));
    }

    @Override
    protected final zzbgf zzb() {
        return this.zza;
    }
}
