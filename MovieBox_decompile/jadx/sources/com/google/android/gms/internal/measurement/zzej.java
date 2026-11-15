package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzej extends zzdy.zza {
    private final long zzc;
    private final zzdy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzej(zzdy zzdyVar, long j10) {
        super(zzdyVar);
        this.zzc = j10;
        this.zzd = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzd.zzj)).setSessionTimeoutDuration(this.zzc);
    }
}
