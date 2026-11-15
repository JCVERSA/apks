package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzfd extends zzdy.zza {
    private final zzdy.zzb zzc;
    private final zzdy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfd(zzdy zzdyVar, zzdy.zzb zzbVar) {
        super(zzdyVar);
        this.zzc = zzbVar;
        this.zzd = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzd.zzj)).unregisterOnMeasurementEventListener(this.zzc);
    }
}
