package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

final class zzeu extends zzdy.zza {
    private final String zzd;
    private final Object zze;
    private final zzdy zzh;
    private final int zzc = 5;
    private final Object zzf = null;
    private final Object zzg = null;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeu(zzdy zzdyVar, boolean z10, int i10, String str, Object obj, Object obj2, Object obj3) {
        super(false);
        this.zzd = str;
        this.zze = obj;
        this.zzh = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzh.zzj)).logHealthData(this.zzc, this.zzd, ObjectWrapper.wrap(this.zze), ObjectWrapper.wrap(null), ObjectWrapper.wrap(null));
    }
}
