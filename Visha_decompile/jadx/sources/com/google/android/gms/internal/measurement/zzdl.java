package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import defpackage.wd8;

final class zzdl extends zzdt {
    final zzbz zza;
    final int zzb;
    final b zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdl(b bVar, zzbz zzbzVar, int i) {
        super(bVar, true);
        this.zzc = bVar;
        this.zza = zzbzVar;
        this.zzb = i;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzc.i)).getTestFlag(this.zza, this.zzb);
    }

    @Override
    public final void zzb() {
        this.zza.zzd(null);
    }
}
