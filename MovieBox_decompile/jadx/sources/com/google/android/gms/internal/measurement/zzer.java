package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzer extends zzdy.zza {
    private final String zzc;
    private final String zzd;
    private final boolean zze;
    private final zzdk zzf;
    private final zzdy zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzer(zzdy zzdyVar, String str, String str2, boolean z10, zzdk zzdkVar) {
        super(zzdyVar);
        this.zzc = str;
        this.zzd = str2;
        this.zze = z10;
        this.zzf = zzdkVar;
        this.zzg = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzg.zzj)).getUserProperties(this.zzc, this.zzd, this.zze, this.zzf);
    }

    @Override
    protected final void zzb() {
        this.zzf.zza((Bundle) null);
    }
}
