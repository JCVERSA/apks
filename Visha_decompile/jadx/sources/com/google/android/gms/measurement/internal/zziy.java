package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcf;
import defpackage.c9j;
import defpackage.wd8;

final class zziy implements Runnable {
    final zzq zza;
    final zzcf zzb;
    final j zzc;

    public zziy(j jVar, zzq zzqVar, zzcf zzcfVar) {
        this.zzc = jVar;
        this.zza = zzqVar;
        this.zzb = zzcfVar;
    }

    @Override
    public final void run() {
        e eVar;
        String strZzd = null;
        try {
            if (this.zzc.a.F().p().h(zzah.ANALYTICS_STORAGE)) {
                j jVar = this.zzc;
                zzee zzeeVar = jVar.d;
                if (zzeeVar == null) {
                    jVar.a.b().q().a("Failed to get app instance id");
                    eVar = this.zzc.a;
                } else {
                    wd8.l(this.zza);
                    strZzd = zzeeVar.zzd(this.zza);
                    if (strZzd != null) {
                        this.zzc.a.I().B(strZzd);
                        this.zzc.a.F().g.b(strZzd);
                    }
                    this.zzc.D();
                    eVar = this.zzc.a;
                }
            } else {
                this.zzc.a.b().w().a("Analytics storage consent denied; will not get app instance id");
                this.zzc.a.I().B(null);
                this.zzc.a.F().g.b(null);
                eVar = this.zzc.a;
            }
        } catch (RemoteException e) {
            this.zzc.a.b().q().b("Failed to get app instance id", e);
            eVar = this.zzc.a;
        } finally {
            this.zzc.a.N().H(this.zzb, null);
        }
        c9j c9jVarN = eVar.N();
    }
}
