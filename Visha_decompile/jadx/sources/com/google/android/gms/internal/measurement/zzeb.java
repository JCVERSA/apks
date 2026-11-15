package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.wd8;

final class zzeb extends zzdt {
    final Activity zza;
    final zzbz zzb;
    final a zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeb(a aVar, Activity activity, zzbz zzbzVar) {
        super(aVar.b, true);
        this.zzc = aVar;
        this.zza = activity;
        this.zzb = zzbzVar;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzc.b.i)).onActivitySaveInstanceState(ObjectWrapper.wrap(this.zza), this.zzb, this.zzi);
    }
}
