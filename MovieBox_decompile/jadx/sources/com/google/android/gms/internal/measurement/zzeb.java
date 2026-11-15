package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzeb extends zzdy.zza {
    private final String zzc;
    private final String zzd;
    private final zzdk zze;
    private final zzdy zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeb(zzdy zzdyVar, String str, String str2, zzdk zzdkVar) {
        super(zzdyVar);
        this.zzc = str;
        this.zzd = str2;
        this.zze = zzdkVar;
        this.zzf = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzf.zzj)).getConditionalUserProperties(this.zzc, this.zzd, this.zze);
    }

    @Override
    protected final void zzb() {
        this.zze.zza((Bundle) null);
    }
}
