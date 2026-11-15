package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzcv extends zzdt {
    final b zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcv(b bVar) {
        super(bVar, true);
        this.zza = bVar;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zza.i)).resetAnalyticsData(this.zzh);
    }
}
