package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcf;
import defpackage.c9j;
import defpackage.wd8;
import java.util.ArrayList;

final class zzjk implements Runnable {
    final String zza;
    final String zzb;
    final zzq zzc;
    final zzcf zzd;
    final j zze;

    public zzjk(j jVar, String str, String str2, zzq zzqVar, zzcf zzcfVar) {
        this.zze = jVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzqVar;
        this.zzd = zzcfVar;
    }

    @Override
    public final void run() {
        e eVar;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                j jVar = this.zze;
                zzee zzeeVar = jVar.d;
                if (zzeeVar == null) {
                    jVar.a.b().q().c("Failed to get conditional properties; not connected to service", this.zza, this.zzb);
                    eVar = this.zze.a;
                } else {
                    wd8.l(this.zzc);
                    arrayList = c9j.u(zzeeVar.zzf(this.zza, this.zzb, this.zzc));
                    this.zze.D();
                    eVar = this.zze.a;
                }
            } catch (RemoteException e) {
                this.zze.a.b().q().d("Failed to get conditional properties; remote exception", this.zza, this.zzb, e);
                eVar = this.zze.a;
            }
            c9j c9jVarN = eVar.N();
        } finally {
            this.zze.a.N().C(this.zzd, arrayList);
        }
    }
}
