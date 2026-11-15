package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

final class zzfk extends zzdy.zza {
    private final Activity zzc;
    private final zzdy.zzd zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfk(zzdy.zzd zzdVar, Activity activity) {
        super(zzdy.this);
        this.zzc = activity;
        this.zzd = zzdVar;
    }

    @Override
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(zzdy.this.zzj)).onActivityPaused(ObjectWrapper.wrap(this.zzc), this.zzb);
    }
}
