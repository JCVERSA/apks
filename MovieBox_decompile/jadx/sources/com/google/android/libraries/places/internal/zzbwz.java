package com.google.android.libraries.places.internal;

import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@JvmName
@SourceDebugExtension
public final class zzbwz {
    /* JADX WARN: Code duplicated, block: B:11:0x002d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x002e  */
    public static final int zza(zzbwp zzbwpVar, int i10) {
        int i11;
        Intrinsics.h(zzbwpVar, "<this>");
        int[] iArrZzq = zzbwpVar.zzq();
        int length = zzbwpVar.zzr().length;
        Intrinsics.h(iArrZzq, "<this>");
        int i12 = length - 1;
        int i13 = 0;
        while (i13 <= i12) {
            int i14 = i10 + 1;
            i11 = (i13 + i12) >>> 1;
            int i15 = iArrZzq[i11];
            if (i15 < i14) {
                i13 = i11 + 1;
            } else {
                if (i15 <= i14) {
                    if (i11 >= 0) {
                        return i11;
                    }
                    return ~i11;
                }
                i12 = i11 - 1;
            }
        }
        i11 = (-i13) - 1;
        if (i11 >= 0) {
            return i11;
        }
        return ~i11;
    }
}
