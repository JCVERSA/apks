package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzma implements Runnable {
    private final zzo zza;
    private final zzls zzb;

    zzma(zzls zzlsVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzlsVar;
    }

    @Override
    public final void run() {
        zzgb zzgbVar = this.zzb.zzb;
        if (zzgbVar == null) {
            this.zzb.zzj().zzg().zza("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzgbVar.zze(this.zza);
        } catch (RemoteException e10) {
            this.zzb.zzj().zzg().zza("Failed to reset data on the service: remote exception", e10);
        }
        this.zzb.zzar();
    }
}
