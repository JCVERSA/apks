package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.Arrays;

public final class zzhe {
    private static final zzhe zza = new zzhe(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzhe(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.zze = -1;
        this.zzb = i10;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z10;
    }

    public static zzhe zzc() {
        return zza;
    }

    static zzhe zze(zzhe zzheVar, zzhe zzheVar2) {
        int i10 = zzheVar.zzb + zzheVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzheVar.zzc, i10);
        System.arraycopy(zzheVar2.zzc, 0, iArrCopyOf, zzheVar.zzb, zzheVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzheVar.zzd, i10);
        System.arraycopy(zzheVar2.zzd, 0, objArrCopyOf, zzheVar.zzb, zzheVar2.zzb);
        return new zzhe(i10, iArrCopyOf, objArrCopyOf, true);
    }

    static zzhe zzf() {
        return new zzhe(0, new int[8], new Object[8], true);
    }

    private final void zzl(int i10) {
        int[] iArr = this.zzc;
        if (i10 > iArr.length) {
            int i11 = this.zzb;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i10);
            this.zzd = Arrays.copyOf(this.zzd, i10);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzhe)) {
            return false;
        }
        zzhe zzheVar = (zzhe) obj;
        int i10 = this.zzb;
        if (i10 == zzheVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzheVar.zzc;
            for (int i11 = 0; i11 < i10; i11++) {
                if (iArr[i11] == iArr2[i11]) {
                }
            }
            Object[] objArr = this.zzd;
            Object[] objArr2 = zzheVar.zzd;
            int i12 = this.zzb;
            for (int i13 = 0; i13 < i12; i13++) {
                if (objArr[i13].equals(objArr2[i13])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.zzb;
        int i11 = i10 + 527;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = ((i11 * 31) + i12) * 31;
        Object[] objArr = this.zzd;
        int i15 = this.zzb;
        for (int i16 = 0; i16 < i15; i16++) {
            iHashCode = (iHashCode * 31) + objArr[i16].hashCode();
        }
        return i14 + iHashCode;
    }

    public final int zza() {
        int iZzy;
        int iZzx;
        int iZzx2;
        int i10 = this.zze;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.zzb; i12++) {
            int i13 = this.zzc[i12];
            int i14 = i13 >>> 3;
            int i15 = i13 & 7;
            if (i15 != 0) {
                if (i15 == 1) {
                    ((Long) this.zzd[i12]).longValue();
                    iZzx2 = zzee.zzx(i14 << 3) + 8;
                } else if (i15 == 2) {
                    int i16 = i14 << 3;
                    zzdw zzdwVar = (zzdw) this.zzd[i12];
                    int i17 = zzee.zzb;
                    int iZzd = zzdwVar.zzd();
                    iZzx2 = zzee.zzx(i16) + zzee.zzx(iZzd) + iZzd;
                } else if (i15 == 3) {
                    int i18 = i14 << 3;
                    int i19 = zzee.zzb;
                    iZzy = ((zzhe) this.zzd[i12]).zza();
                    int iZzx3 = zzee.zzx(i18);
                    iZzx = iZzx3 + iZzx3;
                } else {
                    if (i15 != 5) {
                        throw new IllegalStateException(zzff.zza());
                    }
                    ((Integer) this.zzd[i12]).intValue();
                    iZzx2 = zzee.zzx(i14 << 3) + 4;
                }
                i11 += iZzx2;
            } else {
                int i20 = i14 << 3;
                iZzy = zzee.zzy(((Long) this.zzd[i12]).longValue());
                iZzx = zzee.zzx(i20);
            }
            iZzx2 = iZzx + iZzy;
            i11 += iZzx2;
        }
        this.zze = i11;
        return i11;
    }

    public final int zzb() {
        int i10 = this.zze;
        if (i10 != -1) {
            return i10;
        }
        int iZzx = 0;
        for (int i11 = 0; i11 < this.zzb; i11++) {
            int i12 = this.zzc[i11] >>> 3;
            zzdw zzdwVar = (zzdw) this.zzd[i11];
            int i13 = zzee.zzb;
            int iZzd = zzdwVar.zzd();
            int iZzx2 = zzee.zzx(iZzd) + iZzd;
            int iZzx3 = zzee.zzx(16);
            int iZzx4 = zzee.zzx(i12);
            int iZzx5 = zzee.zzx(8);
            iZzx += iZzx5 + iZzx5 + iZzx3 + iZzx4 + zzee.zzx(24) + iZzx2;
        }
        this.zze = iZzx;
        return iZzx;
    }

    final zzhe zzd(zzhe zzheVar) {
        if (zzheVar.equals(zza)) {
            return this;
        }
        zzg();
        int i10 = this.zzb + zzheVar.zzb;
        zzl(i10);
        System.arraycopy(zzheVar.zzc, 0, this.zzc, this.zzb, zzheVar.zzb);
        System.arraycopy(zzheVar.zzd, 0, this.zzd, this.zzb, zzheVar.zzb);
        this.zzb = i10;
        return this;
    }

    final void zzg() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final void zzh() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    final void zzi(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.zzb; i11++) {
            zzge.zzb(sb2, i10, String.valueOf(this.zzc[i11] >>> 3), this.zzd[i11]);
        }
    }

    final void zzj(int i10, Object obj) {
        zzg();
        zzl(this.zzb + 1);
        int[] iArr = this.zzc;
        int i11 = this.zzb;
        iArr[i11] = i10;
        this.zzd[i11] = obj;
        this.zzb = i11 + 1;
    }

    public final void zzk(zzhv zzhvVar) throws IOException {
        if (this.zzb != 0) {
            for (int i10 = 0; i10 < this.zzb; i10++) {
                int i11 = this.zzc[i10];
                Object obj = this.zzd[i10];
                int i12 = i11 & 7;
                int i13 = i11 >>> 3;
                if (i12 == 0) {
                    zzhvVar.zzt(i13, ((Long) obj).longValue());
                } else if (i12 == 1) {
                    zzhvVar.zzm(i13, ((Long) obj).longValue());
                } else if (i12 == 2) {
                    zzhvVar.zzd(i13, (zzdw) obj);
                } else if (i12 == 3) {
                    zzhvVar.zzE(i13);
                    ((zzhe) obj).zzk(zzhvVar);
                    zzhvVar.zzh(i13);
                } else {
                    if (i12 != 5) {
                        throw new RuntimeException(zzff.zza());
                    }
                    zzhvVar.zzk(i13, ((Integer) obj).intValue());
                }
            }
        }
    }

    private zzhe() {
        this(0, new int[8], new Object[8], true);
    }
}
