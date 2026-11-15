package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzev extends zzdy.zza {
    private final String zzc;
    private final zzdk zzd;
    private final zzdy zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzev(zzdy zzdyVar, String str, zzdk zzdkVar) {
        super(zzdyVar);
        this.zzc = str;
        this.zzd = zzdkVar;
        this.zze = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zze.zzj)).getMaxUserProperties(this.zzc, this.zzd);
    }

    @Override
    protected final void zzb() {
        this.zzd.zza((Bundle) null);
    }
}
