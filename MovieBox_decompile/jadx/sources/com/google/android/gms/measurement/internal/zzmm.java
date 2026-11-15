package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;

final class zzmm implements Runnable {
    private final boolean zza = true;
    private final zzo zzb;
    private final boolean zzc;
    private final zzae zzd;
    private final zzae zze;
    private final zzls zzf;

    zzmm(zzls zzlsVar, boolean z10, zzo zzoVar, boolean z11, zzae zzaeVar, zzae zzaeVar2) {
        this.zzb = zzoVar;
        this.zzc = z11;
        this.zzd = zzaeVar;
        this.zze = zzaeVar2;
        this.zzf = zzlsVar;
    }

    @Override
    public final void run() throws Throwable {
        zzgb zzgbVar = this.zzf.zzb;
        if (zzgbVar == null) {
            this.zzf.zzj().zzg().zza("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.zza) {
            Preconditions.checkNotNull(this.zzb);
            this.zzf.zza(zzgbVar, this.zzc ? null : this.zzd, this.zzb);
        } else {
            try {
                if (TextUtils.isEmpty(this.zze.zza)) {
                    Preconditions.checkNotNull(this.zzb);
                    zzgbVar.zza(this.zzd, this.zzb);
                } else {
                    zzgbVar.zza(this.zzd);
                }
            } catch (RemoteException e10) {
                this.zzf.zzj().zzg().zza("Failed to send conditional user property to the service", e10);
            }
        }
        this.zzf.zzar();
    }
}
