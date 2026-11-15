package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import defpackage.wd8;

final class zzdr extends zzdt {
    final Long zza;
    final String zzb;
    final String zzc;
    final Bundle zzd;
    final boolean zze;
    final boolean zzf;
    final b zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdr(b bVar, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(bVar, true);
        this.zzg = bVar;
        this.zza = l;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = bundle;
        this.zze = z;
        this.zzf = z2;
    }

    @Override
    public final void zza() throws RemoteException {
        Long l = this.zza;
        ((zzcc) wd8.l(this.zzg.i)).logEvent(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, l == null ? this.zzh : l.longValue());
    }
}
