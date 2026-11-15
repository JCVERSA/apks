package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.wd8;

final class zzds extends zzdt {
    final String zza;
    final String zzb;
    final Object zzc;
    final boolean zzd;
    final b zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzds(b bVar, String str, String str2, Object obj, boolean z) {
        super(bVar, true);
        this.zze = bVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = obj;
        this.zzd = z;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zze.i)).setUserProperty(this.zza, this.zzb, ObjectWrapper.wrap(this.zzc), this.zzd, this.zzh);
    }
}
