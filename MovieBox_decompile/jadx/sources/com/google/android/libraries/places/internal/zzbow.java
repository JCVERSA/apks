package com.google.android.libraries.places.internal;

final class zzbow extends zzayx {
    long zzb;
    final zzbpo zzc;
    private final zzbpm zzd;

    zzbow(zzbpo zzbpoVar, zzbpm zzbpmVar) {
        this.zzc = zzbpoVar;
        this.zzd = zzbpmVar;
    }

    @Override
    public final void zza(long j10) {
        if (this.zzc.zzs.zzf != null) {
            return;
        }
        synchronized (this.zzc.zzm) {
            try {
                if (this.zzc.zzs.zzf == null) {
                    zzbpm zzbpmVar = this.zzd;
                    if (!zzbpmVar.zzb) {
                        long j11 = this.zzb + j10;
                        this.zzb = j11;
                        zzbpo zzbpoVar = this.zzc;
                        if (j11 <= zzbpoVar.zzx) {
                            return;
                        }
                        if (j11 > zzbpoVar.zzo) {
                            zzbpmVar.zzc = true;
                        } else {
                            long jZza = zzbpoVar.zzn.zza(j11 - zzbpoVar.zzx);
                            this.zzc.zzx = this.zzb;
                            if (jZza > this.zzc.zzp) {
                                this.zzd.zzc = true;
                            }
                        }
                        zzbpm zzbpmVar2 = this.zzd;
                        Runnable runnableZzag = zzbpmVar2.zzc ? this.zzc.zzag(zzbpmVar2) : null;
                        if (runnableZzag != null) {
                            runnableZzag.run();
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
