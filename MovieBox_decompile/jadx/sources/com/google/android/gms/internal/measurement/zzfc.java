package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzfc extends zzdy.zza {
    private final Bundle zzc;
    private final zzdy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfc(zzdy zzdyVar, Bundle bundle) {
        super(zzdyVar);
        this.zzc = bundle;
        this.zzd = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzd.zzj)).setDefaultEventParameters(this.zzc);
    }
}
