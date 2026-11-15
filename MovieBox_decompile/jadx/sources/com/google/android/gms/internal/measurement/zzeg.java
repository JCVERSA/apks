package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzeg extends zzdy.zza {
    private final Boolean zzc;
    private final zzdy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeg(zzdy zzdyVar, Boolean bool) {
        super(zzdyVar);
        this.zzc = bool;
        this.zzd = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        if (this.zzc != null) {
            ((zzdj) Preconditions.checkNotNull(this.zzd.zzj)).setMeasurementEnabled(this.zzc.booleanValue(), this.zza);
        } else {
            ((zzdj) Preconditions.checkNotNull(this.zzd.zzj)).clearMeasurementEnabled(this.zza);
        }
    }
}
