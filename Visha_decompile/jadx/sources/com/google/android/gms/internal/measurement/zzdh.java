package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import defpackage.wd8;

final class zzdh extends zzdt {
    final Bundle zza;
    final zzbz zzb;
    final b zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdh(b bVar, Bundle bundle, zzbz zzbzVar) {
        super(bVar, true);
        this.zzc = bVar;
        this.zza = bundle;
        this.zzb = zzbzVar;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzc.i)).performAction(this.zza, this.zzb, this.zzh);
    }

    @Override
    public final void zzb() {
        this.zzb.zzd(null);
    }
}
