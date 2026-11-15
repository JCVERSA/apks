package com.google.android.libraries.places.internal;

import java.util.concurrent.ScheduledExecutorService;

final class zzblg extends zzbbd {
    zzbeq zza;
    final zzbma zzb;

    zzblg(zzbma zzbmaVar, zzblf zzblfVar) {
        this.zzb = zzbmaVar;
    }

    @Override
    public final zzbbj zza(zzbba zzbbaVar) {
        this.zzb.zzf.zzd();
        zzmt.zzp(!this.zzb.zzQ, "Channel is being terminated");
        return new zzblx(this.zzb, zzbbaVar);
    }

    @Override
    public final zzbdw zzb() {
        return this.zzb.zzf;
    }

    @Override
    public final ScheduledExecutorService zzc() {
        return this.zzb.zzs;
    }

    @Override
    public final void zzd() {
        this.zzb.zzf.zzd();
        zzbld zzbldVar = new zzbld(this);
        zzbdw zzbdwVar = this.zzb.zzf;
        zzbdwVar.zzc(zzbldVar);
        zzbdwVar.zzb();
    }

    @Override
    public final void zze(zzaze zzazeVar, zzbbk zzbbkVar) {
        this.zzb.zzf.zzd();
        zzmt.zzc(zzazeVar, "newState");
        zzble zzbleVar = new zzble(this, zzbbkVar, zzazeVar);
        zzbdw zzbdwVar = this.zzb.zzf;
        zzbdwVar.zzc(zzbleVar);
        zzbdwVar.zzb();
    }
}
