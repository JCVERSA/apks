package com.google.android.libraries.places.internal;

import java.io.IOException;

public final class zzbsq {
    final zzbsu zza;
    private final int zzc;
    private int zzd;
    private int zze;
    private final zzbsp zzf;
    private final zzbwb zzb = new zzbwb();
    private boolean zzg = false;

    zzbsq(zzbsu zzbsuVar, int i10, int i11, zzbsp zzbspVar) {
        this.zza = zzbsuVar;
        this.zzc = i10;
        this.zzd = i11;
        this.zzf = zzbspVar;
    }

    final int zza() {
        return this.zze;
    }

    final int zzb(int i10) {
        if (i10 <= 0 || Integer.MAX_VALUE - i10 >= this.zzd) {
            int i11 = this.zzd + i10;
            this.zzd = i11;
            return i11;
        }
        throw new IllegalArgumentException("Window size overflow for stream: " + this.zzc);
    }

    final int zzc() {
        return Math.max(0, Math.min(this.zzd, (int) this.zzb.zzg())) - this.zze;
    }

    final int zzd() {
        return this.zzd;
    }

    final int zze() {
        return Math.min(this.zzd, this.zza.zzd.zzd);
    }

    final int zzf(int i10, zzbst zzbstVar) {
        int iMin = Math.min(i10, zze());
        int iZzg = 0;
        while (zzk() && iMin > 0) {
            zzbwb zzbwbVar = this.zzb;
            if (iMin >= zzbwbVar.zzg()) {
                iZzg += (int) zzbwbVar.zzg();
                zzj(zzbwbVar, (int) zzbwbVar.zzg(), this.zzg);
            } else {
                iZzg += iMin;
                zzj(zzbwbVar, iMin, false);
            }
            zzbstVar.zza++;
            iMin = Math.min(i10 - iZzg, zze());
        }
        return iZzg;
    }

    final void zzg(int i10) {
        this.zze += i10;
    }

    final void zzh() {
        this.zze = 0;
    }

    final void zzi(zzbwb zzbwbVar, int i10, boolean z10) {
        this.zzb.zzn(zzbwbVar, i10);
        this.zzg |= z10;
    }

    final void zzj(zzbwb zzbwbVar, int i10, boolean z10) {
        do {
            int iMin = Math.min(i10, this.zza.zzb.zzd());
            int i11 = -iMin;
            this.zza.zzd.zzb(i11);
            zzb(i11);
            try {
                boolean z11 = false;
                if (zzbwbVar.zzg() == iMin && z10) {
                    z11 = true;
                }
                this.zza.zzb.zzf(z11, this.zzc, zzbwbVar, iMin);
                this.zzf.zzs(iMin);
                i10 -= iMin;
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        } while (i10 > 0);
    }

    final boolean zzk() {
        return this.zzb.zzg() > 0;
    }
}
