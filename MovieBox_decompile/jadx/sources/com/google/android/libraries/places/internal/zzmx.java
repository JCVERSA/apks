package com.google.android.libraries.places.internal;

abstract class zzmx extends zzlt {
    final CharSequence zzb;
    final zzma zzc;
    int zzd = 0;
    int zze = Integer.MAX_VALUE;

    protected zzmx(zzmy zzmyVar, CharSequence charSequence) {
        this.zzc = zzmyVar.zza;
        this.zzb = charSequence;
    }

    @Override
    protected final Object zza() {
        int iZzc;
        int i10 = this.zzd;
        while (true) {
            int i11 = this.zzd;
            if (i11 == -1) {
                zzb();
                return null;
            }
            int iZzd = zzd(i11);
            if (iZzd == -1) {
                iZzd = this.zzb.length();
                this.zzd = -1;
                iZzc = -1;
            } else {
                iZzc = zzc(iZzd);
                this.zzd = iZzc;
            }
            if (iZzc != i10) {
                while (i10 < iZzd && this.zzc.zza(this.zzb.charAt(i10))) {
                    i10++;
                }
                while (iZzd > i10) {
                    int i12 = iZzd - 1;
                    if (!this.zzc.zza(this.zzb.charAt(i12))) {
                        break;
                    }
                    iZzd = i12;
                }
                int i13 = this.zze;
                if (i13 == 1) {
                    iZzd = this.zzb.length();
                    this.zzd = -1;
                    while (iZzd > i10) {
                        int i14 = iZzd - 1;
                        if (!this.zzc.zza(this.zzb.charAt(i14))) {
                            break;
                        }
                        iZzd = i14;
                    }
                } else {
                    this.zze = i13 - 1;
                }
                return this.zzb.subSequence(i10, iZzd).toString();
            }
            int i15 = iZzc + 1;
            this.zzd = i15;
            if (i15 > this.zzb.length()) {
                this.zzd = -1;
            }
        }
    }

    abstract int zzc(int i10);

    abstract int zzd(int i10);
}
