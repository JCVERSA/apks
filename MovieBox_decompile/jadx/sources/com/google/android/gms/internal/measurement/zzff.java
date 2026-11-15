package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzff extends zzdy.zza {
    private final Long zzc;
    private final String zzd;
    private final String zze;
    private final Bundle zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final zzdy zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzff(zzdy zzdyVar, Long l10, String str, String str2, Bundle bundle, boolean z10, boolean z11) {
        super(zzdyVar);
        this.zzc = l10;
        this.zzd = str;
        this.zze = str2;
        this.zzf = bundle;
        this.zzg = z10;
        this.zzh = z11;
        this.zzi = zzdyVar;
    }

    @Override
    final void zza() throws RemoteException {
        Long l10 = this.zzc;
        ((zzdj) Preconditions.checkNotNull(this.zzi.zzj)).logEvent(this.zzd, this.zze, this.zzf, this.zzg, this.zzh, l10 == null ? this.zza : l10.longValue());
    }
}
