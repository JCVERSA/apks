package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzcs extends zzdt {
    final Boolean zza;
    final b zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcs(b bVar, Boolean bool) {
        super(bVar, true);
        this.zzb = bVar;
        this.zza = bool;
    }

    @Override
    public final void zza() throws RemoteException {
        if (this.zza != null) {
            ((zzcc) wd8.l(this.zzb.i)).setMeasurementEnabled(this.zza.booleanValue(), this.zzh);
        } else {
            ((zzcc) wd8.l(this.zzb.i)).clearMeasurementEnabled(this.zzh);
        }
    }
}
