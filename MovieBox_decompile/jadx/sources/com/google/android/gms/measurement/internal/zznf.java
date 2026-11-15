package com.google.android.gms.measurement.internal;

final class zznf implements Runnable {
    long zza;
    long zzb;
    final zzng zzc;

    zznf(zzng zzngVar, long j10, long j11) {
        this.zzc = zzngVar;
        this.zza = j10;
        this.zzb = j11;
    }

    @Override
    public final void run() {
        this.zzc.zza.zzl().zzb(new Runnable() {
            @Override
            public final void run() {
                zznf zznfVar = this.zza;
                zzng zzngVar = zznfVar.zzc;
                long j10 = zznfVar.zza;
                long j11 = zznfVar.zzb;
                zzngVar.zza.zzt();
                zzngVar.zza.zzj().zzc().zza("Application going to the background");
                zzngVar.zza.zzk().zzn.zza(true);
                zzngVar.zza.zza(true);
                if (!zzngVar.zza.zze().zzw()) {
                    if (zzngVar.zza.zze().zza(zzbh.zzcp)) {
                        zzngVar.zza.zza(false, false, j11);
                        zzngVar.zza.zzb.zzb(j11);
                    } else {
                        zzngVar.zza.zzb.zzb(j11);
                        zzngVar.zza.zza(false, false, j11);
                    }
                }
                zzngVar.zza.zzj().zzo().zza("Application backgrounded at: timestamp_millis", Long.valueOf(j10));
                if (zzngVar.zza.zze().zza(zzbh.zzdd)) {
                    zzngVar.zza.zzm().zzam();
                }
            }
        });
    }
}
