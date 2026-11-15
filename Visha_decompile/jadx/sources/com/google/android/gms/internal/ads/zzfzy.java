package com.google.android.gms.internal.ads;

import defpackage.v2i;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.Spliterators;

final class zzfzy extends AbstractList implements RandomAccess, Serializable {
    final int[] zza;
    final int zzb;
    final int zzc;

    public zzfzy(int[] iArr, int i, int i2) {
        this.zza = iArr;
        this.zzb = i;
        this.zzc = i2;
    }

    @Override
    public final boolean contains(Object obj) {
        return (obj instanceof Integer) && s7.a(this.zza, ((Integer) obj).intValue(), this.zzb, this.zzc) != -1;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfzy)) {
            return super.equals(obj);
        }
        zzfzy zzfzyVar = (zzfzy) obj;
        int i = this.zzc;
        int i2 = this.zzb;
        int i3 = zzfzyVar.zzc;
        int i4 = zzfzyVar.zzb;
        int i5 = i - i2;
        if (i3 - i4 != i5) {
            return false;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            if (this.zza[i2 + i6] != zzfzyVar.zza[i4 + i6]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i) {
        int i2 = this.zzc;
        int i3 = this.zzb;
        v2i.a(i, i2 - i3, "index");
        return Integer.valueOf(this.zza[i3 + i]);
    }

    @Override
    public final int hashCode() {
        int i = 1;
        for (int i2 = this.zzb; i2 < this.zzc; i2++) {
            i = (i * 31) + this.zza[i2];
        }
        return i;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int[] iArr = this.zza;
        int iIntValue = ((Integer) obj).intValue();
        int i = this.zzb;
        int iA = s7.a(iArr, iIntValue, i, this.zzc);
        if (iA >= 0) {
            return iA - i;
        }
        return -1;
    }

    @Override
    public final boolean isEmpty() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001f  */
    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof Integer) {
            int[] iArr = this.zza;
            int iIntValue = ((Integer) obj).intValue();
            int i = this.zzb;
            int i2 = this.zzc - 1;
            while (i2 >= i) {
                if (iArr[i2] != iIntValue) {
                    i2--;
                } else if (i2 >= 0) {
                    return i2 - i;
                }
            }
            i2 = -1;
            if (i2 >= 0) {
                return i2 - i;
            }
        }
        return -1;
    }

    @Override
    public final Object set(int i, Object obj) {
        int i2 = this.zzc;
        int i3 = this.zzb;
        Integer num = (Integer) obj;
        v2i.a(i, i2 - i3, "index");
        int[] iArr = this.zza;
        int i4 = i3 + i;
        int i5 = iArr[i4];
        num.getClass();
        iArr[i4] = num.intValue();
        return Integer.valueOf(i5);
    }

    @Override
    public final int size() {
        return this.zzc - this.zzb;
    }

    @Override
    public final Spliterator spliterator() {
        return Spliterators.spliterator(this.zza, this.zzb, this.zzc, 0);
    }

    @Override
    public final List subList(int i, int i2) {
        int i3 = this.zzc;
        int i4 = this.zzb;
        v2i.k(i, i2, i3 - i4);
        return i == i2 ? Collections.emptyList() : new zzfzy(this.zza, i + i4, i4 + i2);
    }

    @Override
    public final String toString() {
        int i = this.zzc;
        int i2 = this.zzb;
        StringBuilder sb = new StringBuilder((i - i2) * 5);
        sb.append('[');
        int[] iArr = this.zza;
        sb.append(iArr[i2]);
        while (true) {
            i2++;
            if (i2 >= i) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(iArr[i2]);
        }
    }
}
