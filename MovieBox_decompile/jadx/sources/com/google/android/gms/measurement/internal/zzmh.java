package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzmh implements Runnable {
    private final zzo zza;
    private final zzls zzb;

    zzmh(zzls zzlsVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzlsVar;
    }

    @Override
    public final void run() {
        zzgb zzgbVar = this.zzb.zzb;
        if (zzgbVar == null) {
            this.zzb.zzj().zzg().zza("Failed to send measurementEnabled to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzgbVar.zzh(this.zza);
            this.zzb.zzar();
        } catch (RemoteException e10) {
            this.zzb.zzj().zzg().zza("Failed to send measurementEnabled to the service", e10);
        }
    }
}
