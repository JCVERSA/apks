package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import defpackage.wd8;

final class zzjb implements Runnable {
    final zzq zza;
    final Bundle zzb;
    final j zzc;

    public zzjb(j jVar, zzq zzqVar, Bundle bundle) {
        this.zzc = jVar;
        this.zza = zzqVar;
        this.zzb = bundle;
    }

    @Override
    public final void run() {
        j jVar = this.zzc;
        zzee zzeeVar = jVar.d;
        if (zzeeVar == null) {
            jVar.a.b().q().a("Failed to send default event parameters to service");
            return;
        }
        try {
            wd8.l(this.zza);
            zzeeVar.zzr(this.zzb, this.zza);
        } catch (RemoteException e) {
            this.zzc.a.b().q().b("Failed to send default event parameters to service", e);
        }
    }
}
