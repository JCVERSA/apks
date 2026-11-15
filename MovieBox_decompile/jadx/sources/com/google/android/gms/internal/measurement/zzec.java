package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzec extends zzdy.zza {
    private final String zzc;
    private final String zzd;
    private final Bundle zze;
    private final zzdy zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzec(zzdy zzdyVar, String str, String str2, Bundle bundle) {
        super(zzdyVar);
        this.zzc = str;
        this.zzd = str2;
        this.zze = bundle;
        this.zzf = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzf.zzj)).clearConditionalUserProperty(this.zzc, this.zzd, this.zze);
    }
}
