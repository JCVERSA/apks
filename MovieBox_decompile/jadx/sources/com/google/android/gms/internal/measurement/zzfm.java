package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

final class zzfm extends zzdy.zza {
    private final Activity zzc;
    private final zzdk zzd;
    private final zzdy.zzd zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfm(zzdy.zzd zzdVar, Activity activity, zzdk zzdkVar) {
        super(zzdy.this);
        this.zzc = activity;
        this.zzd = zzdkVar;
        this.zze = zzdVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(zzdy.this.zzj)).onActivitySaveInstanceState(ObjectWrapper.wrap(this.zzc), this.zzd, this.zzb);
    }
}
