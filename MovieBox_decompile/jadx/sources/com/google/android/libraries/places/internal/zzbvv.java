package com.google.android.libraries.places.internal;

import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@JvmName
@SourceDebugExtension
public final class zzbvv {
    private static final zzbwa zza = new zzbwa();

    public static final String zza(int i10) {
        int i11 = 0;
        char[] cArr = {zzbwy.zza()[i10 >> 28], zzbwy.zza()[(i10 >> 24) & 15], zzbwy.zza()[(i10 >> 20) & 15], zzbwy.zza()[(i10 >> 16) & 15], zzbwy.zza()[(i10 >> 12) & 15], zzbwy.zza()[(i10 >> 8) & 15], zzbwy.zza()[(i10 >> 4) & 15], zzbwy.zza()[i10 & 15]};
        while (i11 < 8 && cArr[i11] == '0') {
            i11++;
        }
        return StringsKt.C(cArr, i11, 8);
    }

    public static final void zzb(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException("size=" + j10 + " offset=" + j11 + " byteCount=" + j12);
        }
    }

    public static final boolean zzc(byte[] a10, int i10, byte[] b10, int i11, int i12) {
        Intrinsics.h(a10, "a");
        Intrinsics.h(b10, "b");
        for (int i13 = 0; i13 < i12; i13++) {
            if (a10[i13 + i10] != b10[i13 + i11]) {
                return false;
            }
        }
        return true;
    }
}
