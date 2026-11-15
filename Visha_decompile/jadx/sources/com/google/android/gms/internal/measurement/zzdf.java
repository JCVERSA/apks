package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzdf extends zzdt {
    final String zza;
    final String zzb;
    final boolean zzc;
    final zzbz zzd;
    final b zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdf(b bVar, String str, String str2, boolean z, zzbz zzbzVar) {
        super(bVar, true);
        this.zze = bVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = z;
        this.zzd = zzbzVar;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zze.i)).getUserProperties(this.zza, this.zzb, this.zzc, this.zzd);
    }

    @Override
    public final void zzb() {
        this.zzd.zzd(null);
    }
}
