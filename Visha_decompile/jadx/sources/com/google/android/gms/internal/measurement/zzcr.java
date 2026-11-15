package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.wd8;

final class zzcr extends zzdt {
    final Activity zza;
    final String zzb;
    final String zzc;
    final b zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcr(b bVar, Activity activity, String str, String str2) {
        super(bVar, true);
        this.zzd = bVar;
        this.zza = activity;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzd.i)).setCurrentScreen(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, this.zzh);
    }
}
