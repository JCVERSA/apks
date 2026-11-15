package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

final class zzed extends zzdy.zza {
    private final Activity zzc;
    private final String zzd;
    private final String zze;
    private final zzdy zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzed(zzdy zzdyVar, Activity activity, String str, String str2) {
        super(zzdyVar);
        this.zzc = activity;
        this.zzd = str;
        this.zze = str2;
        this.zzf = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzf.zzj)).setCurrentScreen(ObjectWrapper.wrap(this.zzc), this.zzd, this.zze, this.zza);
    }
}
