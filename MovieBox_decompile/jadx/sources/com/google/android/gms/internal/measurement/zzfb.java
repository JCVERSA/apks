package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzfb extends zzdy.zza {
    private final Intent zzc;
    private final zzdy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfb(zzdy zzdyVar, Intent intent) {
        super(zzdyVar);
        this.zzc = intent;
        this.zzd = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzd.zzj)).setSgtmDebugInfo(this.zzc);
    }
}
