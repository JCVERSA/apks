package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

abstract class zzdt implements Runnable {
    final long zzh;
    final long zzi;
    final boolean zzj;
    final b zzk;

    public zzdt(b bVar, boolean z) {
        this.zzk = bVar;
        this.zzh = bVar.b.currentTimeMillis();
        this.zzi = bVar.b.elapsedRealtime();
        this.zzj = z;
    }

    @Override
    public final void run() {
        if (this.zzk.g) {
            zzb();
            return;
        }
        try {
            zza();
        } catch (Exception e) {
            this.zzk.q(e, false, this.zzj);
            zzb();
        }
    }

    public abstract void zza() throws RemoteException;

    public void zzb() {
    }
}
