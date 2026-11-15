package com.google.android.gms.internal.common;

import java.util.Arrays;

class zzaa extends zzab {
    Object[] zza = new Object[4];
    int zzb = 0;
    boolean zzc;

    zzaa(int i10) {
    }

    public final zzaa zza(Object obj) {
        obj.getClass();
        int i10 = this.zzb;
        int i11 = i10 + 1;
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (length < i11) {
            int i12 = length + (length >> 1) + 1;
            if (i12 < i11) {
                int iHighestOneBit = Integer.highestOneBit(i10);
                i12 = iHighestOneBit + iHighestOneBit;
            }
            if (i12 < 0) {
                i12 = Integer.MAX_VALUE;
            }
            this.zza = Arrays.copyOf(objArr, i12);
            this.zzc = false;
        } else if (this.zzc) {
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
        }
        Object[] objArr2 = this.zza;
        int i13 = this.zzb;
        this.zzb = i13 + 1;
        objArr2[i13] = obj;
        return this;
    }
}
