package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzet extends zzdy.zza {
    private final zzdy.zzc zzc;
    private final zzdy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzet(zzdy zzdyVar, zzdy.zzc zzcVar) {
        super(zzdyVar);
        this.zzc = zzcVar;
        this.zzd = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzd.zzj)).setEventInterceptor(this.zzc);
    }
}
