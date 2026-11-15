package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class zzbtv {
    zzbtt[] zza;
    int zzb;
    private final zzbwb zzc;
    private int zzd;
    private int zze;

    zzbtv(int i10, boolean z10, zzbwb zzbwbVar) {
        zzbtt[] zzbttVarArr = new zzbtt[8];
        this.zza = zzbttVarArr;
        this.zzd = zzbttVarArr.length - 1;
        this.zzc = zzbwbVar;
    }

    private final void zzd(zzbtt zzbttVar) {
        int i10;
        int i11 = zzbttVar.zzj;
        if (i11 > 4096) {
            Arrays.fill(this.zza, (Object) null);
            this.zzd = this.zza.length - 1;
            this.zzb = 0;
            this.zze = 0;
            return;
        }
        int i12 = (this.zze + i11) - 4096;
        if (i12 > 0) {
            int length = this.zza.length - 1;
            int i13 = 0;
            while (true) {
                i10 = this.zzd;
                if (length < i10 || i12 <= 0) {
                    break;
                }
                int i14 = this.zza[length].zzj;
                i12 -= i14;
                this.zze -= i14;
                this.zzb--;
                i13++;
                length--;
            }
            zzbtt[] zzbttVarArr = this.zza;
            int i15 = i10 + 1;
            System.arraycopy(zzbttVarArr, i15, zzbttVarArr, i15 + i13, this.zzb);
            this.zzd += i13;
        }
        int i16 = this.zzb + 1;
        zzbtt[] zzbttVarArr2 = this.zza;
        int length2 = zzbttVarArr2.length;
        if (i16 > length2) {
            zzbtt[] zzbttVarArr3 = new zzbtt[length2 + length2];
            System.arraycopy(zzbttVarArr2, 0, zzbttVarArr3, length2, length2);
            this.zzd = this.zza.length - 1;
            this.zza = zzbttVarArr3;
        }
        int i17 = this.zzd;
        this.zzd = i17 - 1;
        this.zza[i17] = zzbttVar;
        this.zzb++;
        this.zze += i11;
    }

    final void zza(zzbwf zzbwfVar) throws IOException {
        zzc(zzbwfVar.zzc(), 127, 0);
        this.zzc.zzk(zzbwfVar);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0053  */
    final void zzb(List list) throws IOException {
        int i10;
        int i11;
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            zzbtt zzbttVar = (zzbtt) list.get(i12);
            zzbwf zzbwfVarZzg = zzbttVar.zzh.zzg();
            zzbwf zzbwfVar = zzbttVar.zzi;
            Integer num = (Integer) zzbtw.zzc.get(zzbwfVarZzg);
            if (num != null) {
                int iIntValue = num.intValue();
                i11 = iIntValue + 1;
                if (i11 < 2 || i11 > 7) {
                    i10 = i11;
                    i11 = -1;
                } else if (zzbtw.zzb[iIntValue].zzi.equals(zzbwfVar)) {
                    i10 = i11;
                } else if (zzbtw.zzb[i11].zzi.equals(zzbwfVar)) {
                    i11 = iIntValue + 2;
                    i10 = i11;
                } else {
                    i10 = i11;
                    i11 = -1;
                }
            } else {
                i10 = -1;
                i11 = -1;
            }
            if (i11 == -1) {
                int i13 = this.zzd;
                while (true) {
                    i13++;
                    zzbtt[] zzbttVarArr = this.zza;
                    if (i13 >= zzbttVarArr.length) {
                        i11 = -1;
                        break;
                    }
                    if (zzbttVarArr[i13].zzh.equals(zzbwfVarZzg)) {
                        if (this.zza[i13].zzi.equals(zzbwfVar)) {
                            int i14 = i13 - this.zzd;
                            int length = zzbtw.zzb.length;
                            i11 = i14 + 61;
                            break;
                        } else if (i10 == -1) {
                            int i15 = i13 - this.zzd;
                            int length2 = zzbtw.zzb.length;
                            i10 = i15 + 61;
                        }
                    }
                }
            }
            if (i11 != -1) {
                zzc(i11, 127, 128);
            } else if (i10 == -1) {
                this.zzc.zzm(64);
                zza(zzbwfVarZzg);
                zza(zzbwfVar);
                zzd(zzbttVar);
            } else if (!zzbwfVarZzg.zzm(zzbtw.zza) || zzbtt.zze.equals(zzbwfVarZzg)) {
                zzc(i10, 63, 64);
                zza(zzbwfVar);
                zzd(zzbttVar);
            } else {
                zzc(i10, 15, 0);
                zza(zzbwfVar);
            }
        }
    }

    final void zzc(int i10, int i11, int i12) throws IOException {
        if (i10 < i11) {
            this.zzc.zzm(i10 | i12);
            return;
        }
        this.zzc.zzm(i12 | i11);
        int i13 = i10 - i11;
        while (i13 >= 128) {
            this.zzc.zzm(128 | (i13 & 127));
            i13 >>>= 7;
        }
        this.zzc.zzm(i13);
    }
}
