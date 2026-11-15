package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzmk implements Runnable {
    private final zzo zza;
    private final zzls zzb;

    zzmk(zzls zzlsVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzlsVar;
    }

    @Override
    public final void run() {
        zzgb zzgbVar = this.zzb.zzb;
        if (zzgbVar == null) {
            this.zzb.zzj().zzg().zza("Failed to send consent settings to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzgbVar.zzf(this.zza);
            this.zzb.zzar();
        } catch (RemoteException e10) {
            this.zzb.zzj().zzg().zza("Failed to send consent settings to the service", e10);
        }
    }
}
