package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzeq extends zzdy.zza {
    private final zzdk zzc;
    private final zzdy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeq(zzdy zzdyVar, zzdk zzdkVar) {
        super(zzdyVar);
        this.zzc = zzdkVar;
        this.zzd = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzd.zzj)).generateEventId(this.zzc);
    }

    @Override
    protected final void zzb() {
        this.zzc.zza((Bundle) null);
    }
}
