package com.google.android.gms.internal.common;

abstract class zzw extends zzj {
    final CharSequence zzb;
    final zzo zzc;
    final boolean zzd;
    int zze = 0;
    int zzf = Integer.MAX_VALUE;

    protected zzw(zzx zzxVar, CharSequence charSequence) {
        this.zzc = zzxVar.zza;
        this.zzd = zzxVar.zzb;
        this.zzb = charSequence;
    }

    @Override
    protected final Object zza() {
        int iZzc;
        int i10 = this.zze;
        while (true) {
            int i11 = this.zze;
            if (i11 == -1) {
                zzb();
                return null;
            }
            int iZzd = zzd(i11);
            if (iZzd == -1) {
                iZzd = this.zzb.length();
                this.zze = -1;
                iZzc = -1;
            } else {
                iZzc = zzc(iZzd);
                this.zze = iZzc;
            }
            if (iZzc == i10) {
                int i12 = iZzc + 1;
                this.zze = i12;
                if (i12 > this.zzb.length()) {
                    this.zze = -1;
                }
            } else {
                if (i10 < iZzd) {
                    this.zzb.charAt(i10);
                }
                if (i10 < iZzd) {
                    this.zzb.charAt(iZzd - 1);
                }
                if (!this.zzd || i10 != iZzd) {
                    int i13 = this.zzf;
                    if (i13 == 1) {
                        iZzd = this.zzb.length();
                        this.zze = -1;
                        if (iZzd > i10) {
                            this.zzb.charAt(iZzd - 1);
                        }
                    } else {
                        this.zzf = i13 - 1;
                    }
                    return this.zzb.subSequence(i10, iZzd).toString();
                }
                i10 = this.zze;
            }
        }
    }

    abstract int zzc(int i10);

    abstract int zzd(int i10);
}
