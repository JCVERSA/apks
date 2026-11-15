package com.google.android.gms.measurement.internal;

import android.os.Bundle;

final class zznh {
    protected long zza;
    final zznb zzb;
    private long zzc;
    private final zzav zzd;

    public zznh(zznb zznbVar) {
        this.zzb = zznbVar;
        this.zzd = new zznk(this, zznbVar.zzu);
        long jElapsedRealtime = zznbVar.zzb().elapsedRealtime();
        this.zzc = jElapsedRealtime;
        this.zza = jElapsedRealtime;
    }

    final long zza(long j10) {
        long j11 = j10 - this.zza;
        this.zza = j10;
        return j11;
    }

    final void zzb(long j10) {
        this.zzd.zza();
    }

    final void zzc(long j10) {
        this.zzb.zzt();
        this.zzd.zza();
        this.zzc = j10;
        this.zza = j10;
    }

    static void zza(zznh zznhVar) {
        zznhVar.zzb.zzt();
        zznhVar.zza(false, false, zznhVar.zzb.zzb().elapsedRealtime());
        zznhVar.zzb.zzc().zza(zznhVar.zzb.zzb().elapsedRealtime());
    }

    final void zza() {
        this.zzd.zza();
        if (this.zzb.zze().zza(zzbh.zzdb)) {
            this.zzc = this.zzb.zzb().elapsedRealtime();
        } else {
            this.zzc = 0L;
        }
        this.zza = this.zzc;
    }

    public final boolean zza(boolean z10, boolean z11, long j10) {
        this.zzb.zzt();
        this.zzb.zzu();
        if (this.zzb.zzu.zzac()) {
            this.zzb.zzk().zzk.zza(this.zzb.zzb().currentTimeMillis());
        }
        long jZza = j10 - this.zzc;
        if (!z10 && jZza < 1000) {
            this.zzb.zzj().zzp().zza("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(jZza));
            return false;
        }
        if (!z11) {
            jZza = zza(j10);
        }
        this.zzb.zzj().zzp().zza("Recording user engagement, ms", Long.valueOf(jZza));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", jZza);
        zzos.zza(this.zzb.zzn().zza(!this.zzb.zze().zzw()), bundle, true);
        if (!z11) {
            this.zzb.zzm().zzc("auto", "_e", bundle);
        }
        this.zzc = j10;
        this.zzd.zza();
        this.zzd.zza(zzbh.zzbc.zza(null).longValue());
        return true;
    }
}
