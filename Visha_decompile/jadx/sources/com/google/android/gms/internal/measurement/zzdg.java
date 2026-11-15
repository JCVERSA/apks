package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.wd8;

final class zzdg extends zzdt {
    final String zza;
    final Object zzb;
    final b zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdg(b bVar, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(bVar, false);
        this.zzc = bVar;
        this.zza = str;
        this.zzb = obj;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzc.i)).logHealthData(5, this.zza, ObjectWrapper.wrap(this.zzb), ObjectWrapper.wrap(null), ObjectWrapper.wrap(null));
    }
}
