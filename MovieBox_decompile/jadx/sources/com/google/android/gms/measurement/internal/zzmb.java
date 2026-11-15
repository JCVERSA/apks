package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

final class zzmb implements Runnable {
    private final zzo zza;
    private final zzls zzb;

    zzmb(zzls zzlsVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzlsVar;
    }

    @Override
    public final void run() throws Throwable {
        zzgb zzgbVar = this.zzb.zzb;
        if (zzgbVar == null) {
            this.zzb.zzj().zzg().zza("Discarding data. Failed to send app launch");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzgbVar.zzd(this.zza);
            this.zzb.zzh().zzac();
            this.zzb.zza(zzgbVar, (AbstractSafeParcelable) null, this.zza);
            this.zzb.zzar();
        } catch (RemoteException e10) {
            this.zzb.zzj().zzg().zza("Failed to send app launch to the service", e10);
        }
    }
}
