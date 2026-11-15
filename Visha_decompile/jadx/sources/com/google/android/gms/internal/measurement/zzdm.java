package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzdm extends zzdt {
    final boolean zza;
    final b zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdm(b bVar, boolean z) {
        super(bVar, true);
        this.zzb = bVar;
        this.zza = z;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzb.i)).setDataCollectionEnabled(this.zza);
    }
}
