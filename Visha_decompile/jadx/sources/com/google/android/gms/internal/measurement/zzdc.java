package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzdc extends zzdt {
    final zzbz zza;
    final b zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdc(b bVar, zzbz zzbzVar) {
        super(bVar, true);
        this.zzb = bVar;
        this.zza = zzbzVar;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzb.i)).generateEventId(this.zza);
    }

    @Override
    public final void zzb() {
        this.zza.zzd(null);
    }
}
