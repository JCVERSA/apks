package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import defpackage.wd8;

final class zzco extends zzdt {
    final String zza;
    final String zzb;
    final Bundle zzc;
    final b zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzco(b bVar, String str, String str2, Bundle bundle) {
        super(bVar, true);
        this.zzd = bVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzd.i)).clearConditionalUserProperty(this.zza, this.zzb, this.zzc);
    }
}
