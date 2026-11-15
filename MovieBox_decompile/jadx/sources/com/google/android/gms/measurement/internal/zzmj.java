package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;

final class zzmj implements Runnable {
    private final boolean zza;
    private final zzo zzb;
    private final boolean zzc;
    private final zzbf zzd;
    private final String zze;
    private final zzls zzf;

    zzmj(zzls zzlsVar, boolean z10, zzo zzoVar, boolean z11, zzbf zzbfVar, String str) {
        this.zza = z10;
        this.zzb = zzoVar;
        this.zzc = z11;
        this.zzd = zzbfVar;
        this.zze = str;
        this.zzf = zzlsVar;
    }

    @Override
    public final void run() throws Throwable {
        long jElapsedRealtime;
        long j10;
        long jCurrentTimeMillis;
        zzgb zzgbVar = this.zzf.zzb;
        if (zzgbVar == null) {
            this.zzf.zzj().zzg().zza("Discarding data. Failed to send event to service");
            return;
        }
        if (this.zza) {
            Preconditions.checkNotNull(this.zzb);
            this.zzf.zza(zzgbVar, this.zzc ? null : this.zzd, this.zzb);
        } else {
            boolean zZza = this.zzf.zze().zza(zzbh.zzce);
            try {
                if (TextUtils.isEmpty(this.zze)) {
                    Preconditions.checkNotNull(this.zzb);
                    if (zZza) {
                        jCurrentTimeMillis = this.zzf.zzu.zzb().currentTimeMillis();
                        try {
                            jElapsedRealtime = this.zzf.zzu.zzb().elapsedRealtime();
                        } catch (RemoteException e10) {
                            e = e10;
                            jElapsedRealtime = 0;
                            j10 = jCurrentTimeMillis;
                            this.zzf.zzj().zzg().zza("Failed to send event to the service", e);
                            if (zZza) {
                                zzgm.zza(this.zzf.zzu).zza(36301, 13, j10, this.zzf.zzu.zzb().currentTimeMillis(), (int) (this.zzf.zzu.zzb().elapsedRealtime() - jElapsedRealtime));
                            }
                            this.zzf.zzar();
                        }
                    } else {
                        jCurrentTimeMillis = 0;
                        jElapsedRealtime = 0;
                    }
                    try {
                        zzgbVar.zza(this.zzd, this.zzb);
                        if (zZza) {
                            this.zzf.zzj().zzp().zza("Logging telemetry for logEvent");
                            zzgm.zza(this.zzf.zzu).zza(36301, 0, jCurrentTimeMillis, this.zzf.zzu.zzb().currentTimeMillis(), (int) (this.zzf.zzu.zzb().elapsedRealtime() - jElapsedRealtime));
                        }
                    } catch (RemoteException e11) {
                        e = e11;
                        j10 = jCurrentTimeMillis;
                        this.zzf.zzj().zzg().zza("Failed to send event to the service", e);
                        if (zZza && j10 != 0) {
                            zzgm.zza(this.zzf.zzu).zza(36301, 13, j10, this.zzf.zzu.zzb().currentTimeMillis(), (int) (this.zzf.zzu.zzb().elapsedRealtime() - jElapsedRealtime));
                        }
                    }
                } else {
                    zzgbVar.zza(this.zzd, this.zze, this.zzf.zzj().zzx());
                }
            } catch (RemoteException e12) {
                e = e12;
                jElapsedRealtime = 0;
                j10 = 0;
            }
        }
        this.zzf.zzar();
    }
}
