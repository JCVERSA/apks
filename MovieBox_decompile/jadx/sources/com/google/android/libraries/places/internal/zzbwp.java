package com.google.android.libraries.places.internal;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
public final class zzbwp extends zzbwf {
    private final transient byte[][] zzc;
    private final transient int[] zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbwp(byte[][] segments, int[] directory) {
        super(zzbwf.zzb.zzn());
        Intrinsics.h(segments, "segments");
        Intrinsics.h(directory, "directory");
        this.zzc = segments;
        this.zzd = directory;
    }

    private final zzbwf zzs() {
        return new zzbwf(zzp());
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbwf) {
            zzbwf zzbwfVar = (zzbwf) obj;
            if (zzbwfVar.zzc() == zzc() && zzk(0, zzbwfVar, 0, zzc())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        int iZzb = zzb();
        if (iZzb != 0) {
            return iZzb;
        }
        byte[][] bArr = this.zzc;
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        while (true) {
            int length = bArr.length;
            if (i10 >= length) {
                zzh(i11);
                return i11;
            }
            int[] iArr = this.zzd;
            byte[][] bArr2 = this.zzc;
            int i13 = iArr[length + i10];
            int i14 = iArr[i10];
            int i15 = (i14 - i12) + i13;
            byte[] bArr3 = bArr2[i10];
            while (i13 < i15) {
                i11 = (i11 * 31) + bArr3[i13];
                i13++;
            }
            i10++;
            i12 = i14;
        }
    }

    @Override
    public final String toString() {
        return zzs().toString();
    }

    @Override
    public final byte zza(int i10) {
        zzbvv.zzb(this.zzd[this.zzc.length - 1], i10, 1L);
        int iZza = zzbwz.zza(this, i10);
        int i11 = iZza == 0 ? 0 : this.zzd[iZza - 1];
        int[] iArr = this.zzd;
        byte[][] bArr = this.zzc;
        return bArr[iZza][(i10 - i11) + iArr[bArr.length + iZza]];
    }

    @Override
    public final int zzc() {
        return this.zzd[this.zzc.length - 1];
    }

    @Override
    public final String zze() {
        return zzs().zze();
    }

    @Override
    public final zzbwf zzg() {
        return zzs().zzg();
    }

    @Override
    public final void zzj(zzbwb buffer, int i10, int i11) {
        int i12;
        Intrinsics.h(buffer, "buffer");
        int iZza = zzbwz.zza(this, 0);
        int i13 = 0;
        while (i13 < i11) {
            if (iZza == 0) {
                iZza = 0;
                i12 = 0;
            } else {
                i12 = this.zzd[iZza - 1];
            }
            int[] iArr = this.zzd;
            int i14 = iArr[iZza] - i12;
            int i15 = iArr[this.zzc.length + iZza];
            int iMin = Math.min(i11, i14 + i12) - i13;
            int i16 = i15 + (i13 - i12);
            zzbwn zzbwnVar = new zzbwn(this.zzc[iZza], i16, i16 + iMin, true, false);
            zzbwn zzbwnVar2 = buffer.zza;
            if (zzbwnVar2 == null) {
                zzbwnVar.zzh = zzbwnVar;
                zzbwnVar.zzg = zzbwnVar;
                buffer.zza = zzbwnVar;
            } else {
                Intrinsics.e(zzbwnVar2);
                zzbwn zzbwnVar3 = zzbwnVar2.zzh;
                Intrinsics.e(zzbwnVar3);
                zzbwnVar3.zzb(zzbwnVar);
            }
            i13 += iMin;
            iZza++;
        }
        buffer.zzE(buffer.zzg() + ((long) i11));
    }

    @Override
    public final boolean zzk(int i10, zzbwf other, int i11, int i12) {
        int i13;
        Intrinsics.h(other, "other");
        if (zzc() - i12 < 0) {
            return false;
        }
        int iZza = zzbwz.zza(this, 0);
        int i14 = 0;
        int i15 = 0;
        while (i14 < i12) {
            if (iZza == 0) {
                iZza = 0;
                i13 = 0;
            } else {
                i13 = this.zzd[iZza - 1];
            }
            int[] iArr = this.zzd;
            int i16 = iArr[iZza] - i13;
            int i17 = iArr[this.zzc.length + iZza];
            int iMin = Math.min(i12, i16 + i13) - i14;
            if (!other.zzl(i15, this.zzc[iZza], i17 + (i14 - i13), iMin)) {
                return false;
            }
            i15 += iMin;
            i14 += iMin;
            iZza++;
        }
        return true;
    }

    @Override
    public final boolean zzl(int i10, byte[] other, int i11, int i12) {
        int i13;
        Intrinsics.h(other, "other");
        if (i10 < 0 || i10 > zzc() - i12 || i11 < 0 || i11 > other.length - i12) {
            return false;
        }
        int i14 = i12 + i10;
        int iZza = zzbwz.zza(this, i10);
        while (i10 < i14) {
            if (iZza == 0) {
                iZza = 0;
                i13 = 0;
            } else {
                i13 = this.zzd[iZza - 1];
            }
            int[] iArr = this.zzd;
            int i15 = iArr[iZza] - i13;
            int i16 = iArr[this.zzc.length + iZza];
            int iMin = Math.min(i14, i15 + i13) - i10;
            if (!zzbvv.zzc(this.zzc[iZza], i16 + (i10 - i13), other, i11, iMin)) {
                return false;
            }
            i11 += iMin;
            i10 += iMin;
            iZza++;
        }
        return true;
    }

    @Override
    public final byte[] zzo() {
        return zzp();
    }

    @Override
    public final byte[] zzp() {
        byte[] bArr = new byte[zzc()];
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            byte[][] bArr2 = this.zzc;
            int length = bArr2.length;
            if (i10 >= length) {
                return bArr;
            }
            int[] iArr = this.zzd;
            int i13 = iArr[length + i10];
            int i14 = iArr[i10];
            int i15 = i14 - i11;
            ArraysKt.h(bArr2[i10], bArr, i12, i13, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
    }

    public final int[] zzq() {
        return this.zzd;
    }

    public final byte[][] zzr() {
        return this.zzc;
    }
}
