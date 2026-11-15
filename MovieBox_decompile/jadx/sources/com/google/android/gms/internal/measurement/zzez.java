package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzez extends zzdy.zza {
    private final boolean zzc;
    private final zzdy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzez(zzdy zzdyVar, boolean z10) {
        super(zzdyVar);
        this.zzc = z10;
        this.zzd = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzd.zzj)).setDataCollectionEnabled(this.zzc);
    }
}
