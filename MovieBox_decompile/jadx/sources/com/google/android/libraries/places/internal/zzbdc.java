package com.google.android.libraries.places.internal;

abstract class zzbdc extends zzayo {
    zzbdc() {
    }

    public final String toString() {
        zzmm zzmmVarZzb = zzmn.zzb(this);
        zzmmVarZzb.zzd("delegate", zzf());
        return zzmmVarZzb.toString();
    }

    @Override
    public void zza(String str, Throwable th2) {
        zzf().zza(str, th2);
    }

    @Override
    public final void zzb() {
        zzf().zzb();
    }

    @Override
    public void zzc(int i10) {
        throw null;
    }

    protected abstract zzayo zzf();
}
