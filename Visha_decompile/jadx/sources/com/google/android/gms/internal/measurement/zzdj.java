package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzdj extends zzdt {
    final String zza;
    final zzbz zzb;
    final b zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdj(b bVar, String str, zzbz zzbzVar) {
        super(bVar, true);
        this.zzc = bVar;
        this.zza = str;
        this.zzb = zzbzVar;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzc.i)).getMaxUserProperties(this.zza, this.zzb);
    }

    @Override
    public final void zzb() {
        this.zzb.zzd(null);
    }
}
