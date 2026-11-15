package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzdo extends zzdt {
    final zzdu zza;
    final b zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdo(b bVar, zzdu zzduVar) {
        super(bVar, true);
        this.zzb = bVar;
        this.zza = zzduVar;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzb.i)).setEventInterceptor(this.zza);
    }
}
