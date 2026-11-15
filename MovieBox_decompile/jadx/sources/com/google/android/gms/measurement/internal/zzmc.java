package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

final class zzmc implements Runnable {
    private final zzo zza;
    private final com.google.android.gms.internal.measurement.zzdo zzb;
    private final zzls zzc;

    zzmc(zzls zzlsVar, zzo zzoVar, com.google.android.gms.internal.measurement.zzdo zzdoVar) {
        this.zza = zzoVar;
        this.zzb = zzdoVar;
        this.zzc = zzlsVar;
    }

    @Override
    public final void run() {
        try {
            try {
                if (!this.zzc.zzk().zzo().zzh()) {
                    this.zzc.zzj().zzv().zza("Analytics storage consent denied; will not get app instance id");
                    this.zzc.zzm().zzc((String) null);
                    this.zzc.zzk().zze.zza(null);
                    this.zzc.zzq().zza(this.zzb, (String) null);
                    return;
                }
                zzgb zzgbVar = this.zzc.zzb;
                if (zzgbVar == null) {
                    this.zzc.zzj().zzg().zza("Failed to get app instance id");
                    this.zzc.zzq().zza(this.zzb, (String) null);
                    return;
                }
                Preconditions.checkNotNull(this.zza);
                String strZzb = zzgbVar.zzb(this.zza);
                if (strZzb != null) {
                    this.zzc.zzm().zzc(strZzb);
                    this.zzc.zzk().zze.zza(strZzb);
                }
                this.zzc.zzar();
                this.zzc.zzq().zza(this.zzb, strZzb);
            } catch (RemoteException e10) {
                this.zzc.zzj().zzg().zza("Failed to get app instance id", e10);
                this.zzc.zzq().zza(this.zzb, (String) null);
            }
        } catch (Throwable th2) {
            this.zzc.zzq().zza(this.zzb, (String) null);
            throw th2;
        }
    }
}
