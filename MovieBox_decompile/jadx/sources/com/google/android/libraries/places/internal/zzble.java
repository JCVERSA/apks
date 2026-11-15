package com.google.android.libraries.places.internal;

final class zzble implements Runnable {
    final zzbbk zza;
    final zzaze zzb;
    final zzblg zzc;

    zzble(zzblg zzblgVar, zzbbk zzbbkVar, zzaze zzazeVar) {
        this.zza = zzbbkVar;
        this.zzb = zzazeVar;
        this.zzc = zzblgVar;
    }

    @Override
    public final void run() {
        zzblg zzblgVar = this.zzc;
        zzbma zzbmaVar = zzblgVar.zzb;
        if (zzblgVar != zzbmaVar.zzG) {
            return;
        }
        zzbmaVar.zzai(this.zza);
        zzaze zzazeVar = this.zzb;
        if (zzazeVar != zzaze.SHUTDOWN) {
            this.zzc.zzb.zzW.zzb(2, "Entering {0} state with picker: {1}", zzazeVar, this.zza);
            this.zzc.zzb.zzB.zza(this.zzb);
        }
    }
}
