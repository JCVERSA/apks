package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzfa extends zzdy.zza {
    private final zzdk zzc;
    private final int zzd;
    private final zzdy zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfa(zzdy zzdyVar, zzdk zzdkVar, int i10) {
        super(zzdyVar);
        this.zzc = zzdkVar;
        this.zzd = i10;
        this.zze = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zze.zzj)).getTestFlag(this.zzc, this.zzd);
    }

    @Override
    protected final void zzb() {
        this.zzc.zza((Bundle) null);
    }
}
