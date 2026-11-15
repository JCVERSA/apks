package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Arrays;

public final class zzawo {
    private static final zzawo zza = new zzawo(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzawo(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.zze = -1;
        this.zzb = i10;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z10;
    }

    public static zzawo zzc() {
        return zza;
    }

    static zzawo zze(zzawo zzawoVar, zzawo zzawoVar2) {
        int i10 = zzawoVar.zzb + zzawoVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzawoVar.zzc, i10);
        System.arraycopy(zzawoVar2.zzc, 0, iArrCopyOf, zzawoVar.zzb, zzawoVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzawoVar.zzd, i10);
        System.arraycopy(zzawoVar2.zzd, 0, objArrCopyOf, zzawoVar.zzb, zzawoVar2.zzb);
        return new zzawo(i10, iArrCopyOf, objArrCopyOf, true);
    }

    static zzawo zzf() {
        return new zzawo(0, new int[8], new Object[8], true);
    }

    private final void zzm(int i10) {
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
        if (obj == null || !(obj instanceof zzawo)) {
            return false;
        }
        zzawo zzawoVar = (zzawo) obj;
        int i10 = this.zzb;
        if (i10 == zzawoVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzawoVar.zzc;
            for (int i11 = 0; i11 < i10; i11++) {
                if (iArr[i11] == iArr2[i11]) {
                }
            }
            Object[] objArr = this.zzd;
            Object[] objArr2 = zzawoVar.zzd;
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
        int iZzB;
        int iZzC;
        int iZzB2;
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
                    iZzB2 = zzasx.zzB(i14 << 3) + 8;
                } else if (i15 == 2) {
                    int i16 = i14 << 3;
                    zzask zzaskVar = (zzask) this.zzd[i12];
                    int iZzB3 = zzasx.zzB(i16);
                    int iZzd = zzaskVar.zzd();
                    iZzB2 = iZzB3 + zzasx.zzB(iZzd) + iZzd;
                } else if (i15 == 3) {
                    int iZzB4 = zzasx.zzB(i14 << 3);
                    iZzB = iZzB4 + iZzB4;
                    iZzC = ((zzawo) this.zzd[i12]).zza();
                } else {
                    if (i15 != 5) {
                        throw new IllegalStateException(zzauf.zza());
                    }
                    ((Integer) this.zzd[i12]).intValue();
                    iZzB2 = zzasx.zzB(i14 << 3) + 4;
                }
                i11 += iZzB2;
            } else {
                int i17 = i14 << 3;
                long jLongValue = ((Long) this.zzd[i12]).longValue();
                iZzB = zzasx.zzB(i17);
                iZzC = zzasx.zzC(jLongValue);
            }
            iZzB2 = iZzB + iZzC;
            i11 += iZzB2;
        }
        this.zze = i11;
        return i11;
    }

    public final int zzb() {
        int i10 = this.zze;
        if (i10 != -1) {
            return i10;
        }
        int iZzB = 0;
        for (int i11 = 0; i11 < this.zzb; i11++) {
            int i12 = this.zzc[i11] >>> 3;
            zzask zzaskVar = (zzask) this.zzd[i11];
            int iZzB2 = zzasx.zzB(8);
            int iZzB3 = zzasx.zzB(16) + zzasx.zzB(i12);
            int iZzB4 = zzasx.zzB(24);
            int iZzd = zzaskVar.zzd();
            iZzB += iZzB2 + iZzB2 + iZzB3 + iZzB4 + zzasx.zzB(iZzd) + iZzd;
        }
        this.zze = iZzB;
        return iZzB;
    }

    final zzawo zzd(zzawo zzawoVar) {
        if (zzawoVar.equals(zza)) {
            return this;
        }
        zzg();
        int i10 = this.zzb + zzawoVar.zzb;
        zzm(i10);
        System.arraycopy(zzawoVar.zzc, 0, this.zzc, this.zzb, zzawoVar.zzb);
        System.arraycopy(zzawoVar.zzd, 0, this.zzd, this.zzb, zzawoVar.zzb);
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
            zzavh.zzb(sb2, i10, String.valueOf(this.zzc[i11] >>> 3), this.zzd[i11]);
        }
    }

    final void zzj(int i10, Object obj) {
        zzg();
        zzm(this.zzb + 1);
        int[] iArr = this.zzc;
        int i11 = this.zzb;
        iArr[i11] = i10;
        this.zzd[i11] = obj;
        this.zzb = i11 + 1;
    }

    final void zzk(zzasy zzasyVar) throws IOException {
        for (int i10 = 0; i10 < this.zzb; i10++) {
            zzasyVar.zzw(this.zzc[i10] >>> 3, this.zzd[i10]);
        }
    }

    public final void zzl(zzasy zzasyVar) throws IOException {
        if (this.zzb != 0) {
            for (int i10 = 0; i10 < this.zzb; i10++) {
                int i11 = this.zzc[i10];
                Object obj = this.zzd[i10];
                int i12 = i11 & 7;
                int i13 = i11 >>> 3;
                if (i12 == 0) {
                    zzasyVar.zzt(i13, ((Long) obj).longValue());
                } else if (i12 == 1) {
                    zzasyVar.zzm(i13, ((Long) obj).longValue());
                } else if (i12 == 2) {
                    zzasyVar.zzd(i13, (zzask) obj);
                } else if (i12 == 3) {
                    zzasyVar.zzF(i13);
                    ((zzawo) obj).zzl(zzasyVar);
                    zzasyVar.zzh(i13);
                } else {
                    if (i12 != 5) {
                        throw new RuntimeException(zzauf.zza());
                    }
                    zzasyVar.zzk(i13, ((Integer) obj).intValue());
                }
            }
        }
    }

    private zzawo() {
        this(0, new int[8], new Object[8], true);
    }
}
