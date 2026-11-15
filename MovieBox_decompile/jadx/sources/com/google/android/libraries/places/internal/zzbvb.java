package com.google.android.libraries.places.internal;

public abstract class zzbvb extends zzbbm {
    public final String toString() {
        zzmm zzmmVarZzb = zzmn.zzb(this);
        zzmmVarZzb.zzd("delegate", zzg());
        return zzmmVarZzb.toString();
    }

    @Override
    public final void zzb(zzbdo zzbdoVar) {
        zzg().zzb(zzbdoVar);
    }

    @Override
    public final void zzc(zzbbi zzbbiVar) {
        zzg().zzc(zzbbiVar);
    }

    @Override
    public final void zzd() {
        zzg().zzd();
    }

    @Override
    public void zze() {
        throw null;
    }

    @Override
    public final boolean zzf() {
        zzg().zzf();
        return false;
    }

    protected abstract zzbbm zzg();
}
