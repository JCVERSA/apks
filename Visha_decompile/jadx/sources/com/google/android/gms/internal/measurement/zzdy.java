package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.wd8;

final class zzdy extends zzdt {
    final Activity zza;
    final a zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdy(a aVar, Activity activity) {
        super(aVar.b, true);
        this.zzb = aVar;
        this.zza = activity;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzb.b.i)).onActivityResumed(ObjectWrapper.wrap(this.zza), this.zzi);
    }
}
