package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

final class zzmi implements Runnable {
    private final zzbf zza;
    private final String zzb;
    private final com.google.android.gms.internal.measurement.zzdo zzc;
    private final zzls zzd;

    zzmi(zzls zzlsVar, zzbf zzbfVar, String str, com.google.android.gms.internal.measurement.zzdo zzdoVar) {
        this.zza = zzbfVar;
        this.zzb = str;
        this.zzc = zzdoVar;
        this.zzd = zzlsVar;
    }

    @Override
    public final void run() {
        try {
            try {
                zzgb zzgbVar = this.zzd.zzb;
                if (zzgbVar == null) {
                    this.zzd.zzj().zzg().zza("Discarding data. Failed to send event to service to bundle");
                    this.zzd.zzq().zza(this.zzc, (byte[]) null);
                } else {
                    byte[] bArrZza = zzgbVar.zza(this.zza, this.zzb);
                    this.zzd.zzar();
                    this.zzd.zzq().zza(this.zzc, bArrZza);
                }
            } catch (RemoteException e10) {
                this.zzd.zzj().zzg().zza("Failed to send event to the service to bundle", e10);
                this.zzd.zzq().zza(this.zzc, (byte[]) null);
            }
        } catch (Throwable th2) {
            this.zzd.zzq().zza(this.zzc, (byte[]) null);
            throw th2;
        }
    }
}
