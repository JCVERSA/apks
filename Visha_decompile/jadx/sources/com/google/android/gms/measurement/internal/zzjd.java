package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcf;
import defpackage.c9j;

final class zzjd implements Runnable {
    final zzaw zza;
    final String zzb;
    final zzcf zzc;
    final j zzd;

    public zzjd(j jVar, zzaw zzawVar, String str, zzcf zzcfVar) {
        this.zzd = jVar;
        this.zza = zzawVar;
        this.zzb = str;
        this.zzc = zzcfVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.google.android.gms.internal.measurement.zzcf] */
    @Override
    public final void run() {
        e eVar;
        byte[] bArrZzu = null;
        try {
            try {
                j jVar = this.zzd;
                zzee zzeeVar = jVar.d;
                if (zzeeVar == null) {
                    jVar.a.b().q().a("Discarding data. Failed to send event to service to bundle");
                    eVar = this.zzd.a;
                } else {
                    bArrZzu = zzeeVar.zzu(this.zza, this.zzb);
                    this.zzd.D();
                    eVar = this.zzd.a;
                }
            } catch (RemoteException e) {
                this.zzd.a.b().q().b("Failed to send event to the service to bundle", e);
                eVar = this.zzd.a;
            }
            c9j c9jVarN = eVar.N();
        } finally {
            this.zzd.a.N().E(this.zzc, bArrZzu);
        }
    }
}
