package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzcp extends zzdt {
    final String zza;
    final String zzb;
    final zzbz zzc;
    final b zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcp(b bVar, String str, String str2, zzbz zzbzVar) {
        super(bVar, true);
        this.zzd = bVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzbzVar;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzd.i)).getConditionalUserProperties(this.zza, this.zzb, this.zzc);
    }

    @Override
    public final void zzb() {
        this.zzc.zzd(null);
    }
}
