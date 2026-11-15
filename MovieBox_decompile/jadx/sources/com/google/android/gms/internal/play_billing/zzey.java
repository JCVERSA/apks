package com.google.android.gms.internal.play_billing;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzey extends zzdh implements RandomAccess, zzfc, zzgj {
    private static final zzey zza = new zzey(new int[0], 0, false);
    private int[] zzb;
    private int zzc;

    zzey() {
        this(new int[10], 0, true);
    }

    private final String zzg(int i10) {
        return "Index:" + i10 + ", Size:" + this.zzc;
    }

    private final void zzh(int i10) {
        if (i10 < 0 || i10 >= this.zzc) {
            throw new IndexOutOfBoundsException(zzg(i10));
        }
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        int iIntValue = ((Integer) obj).intValue();
        zza();
        if (i10 < 0 || i10 > (i11 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzg(i10));
        }
        int i12 = i10 + 1;
        int[] iArr = this.zzb;
        if (i11 < iArr.length) {
            System.arraycopy(iArr, i10, iArr, i12, i11 - i10);
        } else {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            System.arraycopy(this.zzb, i10, iArr2, i12, this.zzc - i10);
            this.zzb = iArr2;
        }
        this.zzb[i10] = iIntValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final boolean addAll(Collection collection) {
        zza();
        byte[] bArr = zzfd.zzd;
        collection.getClass();
        if (!(collection instanceof zzey)) {
            return super.addAll(collection);
        }
        zzey zzeyVar = (zzey) collection;
        int i10 = zzeyVar.zzc;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.zzc;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.zzb;
        if (i12 > iArr.length) {
            this.zzb = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(zzeyVar.zzb, 0, this.zzb, this.zzc, zzeyVar.zzc);
        this.zzc = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzey)) {
            return super.equals(obj);
        }
        zzey zzeyVar = (zzey) obj;
        if (this.zzc != zzeyVar.zzc) {
            return false;
        }
        int[] iArr = zzeyVar.zzb;
        for (int i10 = 0; i10 < this.zzc; i10++) {
            if (this.zzb[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        zzh(i10);
        return Integer.valueOf(this.zzb[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.zzc; i11++) {
            i10 = (i10 * 31) + this.zzb[i11];
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i10 = this.zzc;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.zzb[i11] == iIntValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override
    public final Object remove(int i10) {
        zza();
        zzh(i10);
        int[] iArr = this.zzb;
        int i11 = iArr[i10];
        int i12 = this.zzc;
        if (i10 < i12 - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (i12 - i10) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }

    @Override
    protected final void removeRange(int i10, int i11) {
        zza();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.zzb;
        System.arraycopy(iArr, i11, iArr, i10, this.zzc - i11);
        this.zzc -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        zza();
        zzh(i10);
        int[] iArr = this.zzb;
        int i11 = iArr[i10];
        iArr[i10] = iIntValue;
        return Integer.valueOf(i11);
    }

    @Override
    public final int size() {
        return this.zzc;
    }

    @Override
    public final zzfc zzd(int i10) {
        if (i10 >= this.zzc) {
            return new zzey(Arrays.copyOf(this.zzb, i10), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    public final int zze(int i10) {
        zzh(i10);
        return this.zzb[i10];
    }

    public final void zzf(int i10) {
        zza();
        int i11 = this.zzc;
        int[] iArr = this.zzb;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.zzb = iArr2;
        }
        int[] iArr3 = this.zzb;
        int i12 = this.zzc;
        this.zzc = i12 + 1;
        iArr3[i12] = i10;
    }

    private zzey(int[] iArr, int i10, boolean z10) {
        super(z10);
        this.zzb = iArr;
        this.zzc = i10;
    }

    @Override
    public final boolean add(Object obj) {
        zzf(((Integer) obj).intValue());
        return true;
    }
}
