package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzmf implements Runnable {
    private final zzo zza;
    private final Bundle zzb;
    private final zzls zzc;

    zzmf(zzls zzlsVar, zzo zzoVar, Bundle bundle) {
        this.zza = zzoVar;
        this.zzb = bundle;
        this.zzc = zzlsVar;
    }

    @Override
    public final void run() {
        zzgb zzgbVar = this.zzc.zzb;
        if (zzgbVar == null) {
            this.zzc.zzj().zzg().zza("Failed to send default event parameters to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzgbVar.zza(this.zzb, this.zza);
        } catch (RemoteException e10) {
            this.zzc.zzj().zzg().zza("Failed to send default event parameters to service", e10);
        }
    }
}
