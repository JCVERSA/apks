package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

final class zzea extends zzdy.zza {
    private final String zzc;
    private final String zzd;
    private final Object zze;
    private final boolean zzf;
    private final zzdy zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzea(zzdy zzdyVar, String str, String str2, Object obj, boolean z10) {
        super(zzdyVar);
        this.zzc = str;
        this.zzd = str2;
        this.zze = obj;
        this.zzf = z10;
        this.zzg = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzg.zzj)).setUserProperty(this.zzc, this.zzd, ObjectWrapper.wrap(this.zze), this.zzf, this.zza);
    }
}
