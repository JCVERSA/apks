package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import defpackage.wd8;

final class zziz implements Runnable {
    final zzq zza;
    final j zzb;

    public zziz(j jVar, zzq zzqVar) {
        this.zzb = jVar;
        this.zza = zzqVar;
    }

    @Override
    public final void run() {
        j jVar = this.zzb;
        zzee zzeeVar = jVar.d;
        if (zzeeVar == null) {
            jVar.a.b().q().a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            wd8.l(this.zza);
            zzeeVar.zzj(this.zza);
            this.zzb.a.C().s();
            this.zzb.q(zzeeVar, null, this.zza);
            this.zzb.D();
        } catch (RemoteException e) {
            this.zzb.a.b().q().b("Failed to send app launch to the service", e);
        }
    }
}
