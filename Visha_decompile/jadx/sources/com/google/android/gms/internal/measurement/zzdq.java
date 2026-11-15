package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzdq extends zzdt {
    final zzdv zza;
    final b zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdq(b bVar, zzdv zzdvVar) {
        super(bVar, true);
        this.zzb = bVar;
        this.zza = zzdvVar;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzb.i)).unregisterOnMeasurementEventListener(this.zza);
    }
}
