package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import defpackage.wd8;

final class zzjg implements Runnable {
    final zzq zza;
    final j zzb;

    public zzjg(j jVar, zzq zzqVar) {
        this.zzb = jVar;
        this.zza = zzqVar;
    }

    @Override
    public final void run() {
        j jVar = this.zzb;
        zzee zzeeVar = jVar.d;
        if (zzeeVar == null) {
            jVar.a.b().q().a("Failed to send consent settings to service");
            return;
        }
        try {
            wd8.l(this.zza);
            zzeeVar.zzp(this.zza);
            this.zzb.D();
        } catch (RemoteException e) {
            this.zzb.a.b().q().b("Failed to send consent settings to the service", e);
        }
    }
}
