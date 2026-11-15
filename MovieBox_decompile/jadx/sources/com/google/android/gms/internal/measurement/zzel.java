package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzel extends zzdy.zza {
    private final String zzc;
    private final zzdy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzel(zzdy zzdyVar, String str) {
        super(zzdyVar);
        this.zzc = str;
        this.zzd = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzd.zzj)).endAdUnitExposure(this.zzc, this.zzb);
    }
}
