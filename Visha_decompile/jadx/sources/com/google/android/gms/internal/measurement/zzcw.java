package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzcw extends zzdt {
    final long zza;
    final b zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcw(b bVar, long j) {
        super(bVar, true);
        this.zzb = bVar;
        this.zza = j;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzb.i)).setSessionTimeoutDuration(this.zza);
    }
}
