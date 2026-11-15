package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzlw implements Runnable {
    private final String zza;
    private final String zzb;
    private final zzo zzc;
    private final boolean zzd;
    private final com.google.android.gms.internal.measurement.zzdo zze;
    private final zzls zzf;

    zzlw(zzls zzlsVar, String str, String str2, zzo zzoVar, boolean z10, com.google.android.gms.internal.measurement.zzdo zzdoVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzoVar;
        this.zzd = z10;
        this.zze = zzdoVar;
        this.zzf = zzlsVar;
    }

    @Override
    public final void run() {
        Bundle bundle = new Bundle();
        try {
            try {
                zzgb zzgbVar = this.zzf.zzb;
                if (zzgbVar == null) {
                    this.zzf.zzj().zzg().zza("Failed to get user properties; not connected to service", this.zza, this.zzb);
                    this.zzf.zzq().zza(this.zze, bundle);
                } else {
                    Preconditions.checkNotNull(this.zzc);
                    Bundle bundleZza = zzos.zza(zzgbVar.zza(this.zza, this.zzb, this.zzd, this.zzc));
                    this.zzf.zzar();
                    this.zzf.zzq().zza(this.zze, bundleZza);
                }
            } catch (RemoteException e10) {
                this.zzf.zzj().zzg().zza("Failed to get user properties; remote exception", this.zza, e10);
                this.zzf.zzq().zza(this.zze, bundle);
            }
        } catch (Throwable th2) {
            this.zzf.zzq().zza(this.zze, bundle);
            throw th2;
        }
    }
}
