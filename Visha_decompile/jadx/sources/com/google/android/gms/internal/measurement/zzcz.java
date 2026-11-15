package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzcz extends zzdt {
    final String zza;
    final b zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcz(b bVar, String str) {
        super(bVar, true);
        this.zzb = bVar;
        this.zza = str;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzb.i)).endAdUnitExposure(this.zza, this.zzi);
    }
}
