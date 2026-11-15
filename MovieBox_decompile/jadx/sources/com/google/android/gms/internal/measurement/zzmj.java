package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;

public final class zzmj {
    private static final zzmj zza = new zzmj(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzmj() {
        this(0, new int[8], new Object[8], true);
    }

    public static zzmj zzc() {
        return zza;
    }

    static zzmj zzd() {
        return new zzmj();
    }

    private final void zzf() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzmj)) {
            return false;
        }
        zzmj zzmjVar = (zzmj) obj;
        int i10 = this.zzb;
        if (i10 == zzmjVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzmjVar.zzc;
            for (int i11 = 0; i11 < i10; i11++) {
                if (iArr[i11] == iArr2[i11]) {
                }
            }
            Object[] objArr = this.zzd;
            Object[] objArr2 = zzmjVar.zzd;
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
        int i11 = (i10 + 527) * 31;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i11 + i12) * 31;
        Object[] objArr = this.zzd;
        int i15 = this.zzb;
        for (int i16 = 0; i16 < i15; i16++) {
            iHashCode = (iHashCode * 31) + objArr[i16].hashCode();
        }
        return i14 + iHashCode;
    }

    public final int zza() {
        int iZzg;
        int i10 = this.zze;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.zzb; i12++) {
            int i13 = this.zzc[i12];
            int i14 = i13 >>> 3;
            int i15 = i13 & 7;
            if (i15 == 0) {
                iZzg = zzjc.zzg(i14, ((Long) this.zzd[i12]).longValue());
            } else if (i15 == 1) {
                iZzg = zzjc.zzc(i14, ((Long) this.zzd[i12]).longValue());
            } else if (i15 == 2) {
                iZzg = zzjc.zzc(i14, (zzik) this.zzd[i12]);
            } else if (i15 == 3) {
                iZzg = (zzjc.zzi(i14) << 1) + ((zzmj) this.zzd[i12]).zza();
            } else {
                if (i15 != 5) {
                    throw new IllegalStateException(zzkb.zza());
                }
                iZzg = zzjc.zzf(i14, ((Integer) this.zzd[i12]).intValue());
            }
            i11 += iZzg;
        }
        this.zze = i11;
        return i11;
    }

    public final int zzb() {
        int i10 = this.zze;
        if (i10 != -1) {
            return i10;
        }
        int iZzd = 0;
        for (int i11 = 0; i11 < this.zzb; i11++) {
            iZzd += zzjc.zzd(this.zzc[i11] >>> 3, (zzik) this.zzd[i11]);
        }
        this.zze = iZzd;
        return iZzd;
    }

    public final void zze() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    private zzmj(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.zze = -1;
        this.zzb = i10;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z10;
    }

    public final void zzb(zznb zznbVar) throws IOException {
        if (this.zzb == 0) {
            return;
        }
        if (zznbVar.zza() == 1) {
            for (int i10 = 0; i10 < this.zzb; i10++) {
                zza(this.zzc[i10], this.zzd[i10], zznbVar);
            }
            return;
        }
        for (int i11 = this.zzb - 1; i11 >= 0; i11--) {
            zza(this.zzc[i11], this.zzd[i11], zznbVar);
        }
    }

    final zzmj zza(zzmj zzmjVar) {
        if (zzmjVar.equals(zza)) {
            return this;
        }
        zzf();
        int i10 = this.zzb + zzmjVar.zzb;
        zza(i10);
        System.arraycopy(zzmjVar.zzc, 0, this.zzc, this.zzb, zzmjVar.zzb);
        System.arraycopy(zzmjVar.zzd, 0, this.zzd, this.zzb, zzmjVar.zzb);
        this.zzb = i10;
        return this;
    }

    static zzmj zza(zzmj zzmjVar, zzmj zzmjVar2) {
        int i10 = zzmjVar.zzb + zzmjVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzmjVar.zzc, i10);
        System.arraycopy(zzmjVar2.zzc, 0, iArrCopyOf, zzmjVar.zzb, zzmjVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzmjVar.zzd, i10);
        System.arraycopy(zzmjVar2.zzd, 0, objArrCopyOf, zzmjVar.zzb, zzmjVar2.zzb);
        return new zzmj(i10, iArrCopyOf, objArrCopyOf, true);
    }

    private final void zza(int i10) {
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

    final void zza(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.zzb; i11++) {
            zzld.zza(sb2, i10, String.valueOf(this.zzc[i11] >>> 3), this.zzd[i11]);
        }
    }

    final void zza(int i10, Object obj) {
        zzf();
        zza(this.zzb + 1);
        int[] iArr = this.zzc;
        int i11 = this.zzb;
        iArr[i11] = i10;
        this.zzd[i11] = obj;
        this.zzb = i11 + 1;
    }

    final void zza(zznb zznbVar) throws IOException {
        if (zznbVar.zza() == 2) {
            for (int i10 = this.zzb - 1; i10 >= 0; i10--) {
                zznbVar.zza(this.zzc[i10] >>> 3, this.zzd[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.zzb; i11++) {
            zznbVar.zza(this.zzc[i11] >>> 3, this.zzd[i11]);
        }
    }

    private static void zza(int i10, Object obj, zznb zznbVar) throws IOException {
        int i11 = i10 >>> 3;
        int i12 = i10 & 7;
        if (i12 == 0) {
            zznbVar.zzb(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 1) {
            zznbVar.zza(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 2) {
            zznbVar.zza(i11, (zzik) obj);
            return;
        }
        if (i12 != 3) {
            if (i12 == 5) {
                zznbVar.zzb(i11, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzkb.zza());
        }
        if (zznbVar.zza() == 1) {
            zznbVar.zzb(i11);
            ((zzmj) obj).zzb(zznbVar);
            zznbVar.zza(i11);
        } else {
            zznbVar.zza(i11);
            ((zzmj) obj).zzb(zznbVar);
            zznbVar.zzb(i11);
        }
    }
}
