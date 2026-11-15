package com.google.android.libraries.places.internal;

import java.util.concurrent.ScheduledExecutorService;

public abstract class zzbvc extends zzbbd {
    public final String toString() {
        zzmm zzmmVarZzb = zzmn.zzb(this);
        zzmmVarZzb.zzd("delegate", zzf());
        return zzmmVarZzb.toString();
    }

    @Override
    public final zzbbj zza(zzbba zzbbaVar) {
        return zzf().zza(zzbbaVar);
    }

    @Override
    public final zzbdw zzb() {
        return zzf().zzb();
    }

    @Override
    public final ScheduledExecutorService zzc() {
        return zzf().zzc();
    }

    @Override
    public final void zzd() {
        zzf().zzd();
    }

    @Override
    public void zze(zzaze zzazeVar, zzbbk zzbbkVar) {
        throw null;
    }

    protected abstract zzbbd zzf();
}
