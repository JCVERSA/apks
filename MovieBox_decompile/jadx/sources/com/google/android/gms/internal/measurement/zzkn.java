package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzkn extends zzie<Long> implements zzjz, zzlo, RandomAccess {
    private static final long[] zza;
    private static final zzkn zzb;
    private long[] zzc;
    private int zzd;

    static {
        long[] jArr = new long[0];
        zza = jArr;
        zzb = new zzkn(jArr, 0, false);
    }

    zzkn() {
        this(zza, 0, true);
    }

    public static zzkn zzd() {
        return zzb;
    }

    private static int zze(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final String zzf(int i10) {
        return "Index:" + i10 + ", Size:" + this.zzd;
    }

    private final void zzg(int i10) {
        if (i10 < 0 || i10 >= this.zzd) {
            throw new IndexOutOfBoundsException(zzf(i10));
        }
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        long jLongValue = ((Long) obj).longValue();
        zza();
        if (i10 < 0 || i10 > (i11 = this.zzd)) {
            throw new IndexOutOfBoundsException(zzf(i10));
        }
        long[] jArr = this.zzc;
        if (i11 < jArr.length) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
        } else {
            long[] jArr2 = new long[zze(jArr.length)];
            System.arraycopy(this.zzc, 0, jArr2, 0, i10);
            System.arraycopy(this.zzc, i10, jArr2, i10 + 1, this.zzd - i10);
            this.zzc = jArr2;
        }
        this.zzc[i10] = jLongValue;
        this.zzd++;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final boolean addAll(Collection<? extends Long> collection) {
        zza();
        zzjv.zza(collection);
        if (!(collection instanceof zzkn)) {
            return super.addAll(collection);
        }
        zzkn zzknVar = (zzkn) collection;
        int i10 = zzknVar.zzd;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.zzd;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.zzc;
        if (i12 > jArr.length) {
            this.zzc = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(zzknVar.zzc, 0, this.zzc, this.zzd, zzknVar.zzd);
        this.zzd = i12;
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
        if (!(obj instanceof zzkn)) {
            return super.equals(obj);
        }
        zzkn zzknVar = (zzkn) obj;
        if (this.zzd != zzknVar.zzd) {
            return false;
        }
        long[] jArr = zzknVar.zzc;
        for (int i10 = 0; i10 < this.zzd; i10++) {
            if (this.zzc[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        return Long.valueOf(zzb(i10));
    }

    @Override
    public final int hashCode() {
        int iZza = 1;
        for (int i10 = 0; i10 < this.zzd; i10++) {
            iZza = (iZza * 31) + zzjv.zza(this.zzc[i10]);
        }
        return iZza;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.zzc[i10] == jLongValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public final Object remove(int i10) {
        zza();
        zzg(i10);
        long[] jArr = this.zzc;
        long j10 = jArr[i10];
        int i11 = this.zzd;
        if (i10 < i11 - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (i11 - i10) - 1);
        }
        this.zzd--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override
    protected final void removeRange(int i10, int i11) {
        zza();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.zzc;
        System.arraycopy(jArr, i11, jArr, i10, this.zzd - i11);
        this.zzd -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        zza();
        zzg(i10);
        long[] jArr = this.zzc;
        long j10 = jArr[i10];
        jArr[i10] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override
    public final int size() {
        return this.zzd;
    }

    @Override
    public final long zzb(int i10) {
        zzg(i10);
        return this.zzc[i10];
    }

    @Override
    public final zzjz zza(int i10) {
        if (i10 >= this.zzd) {
            return new zzkn(i10 == 0 ? zza : Arrays.copyOf(this.zzc, i10), this.zzd, true);
        }
        throw new IllegalArgumentException();
    }

    private zzkn(long[] jArr, int i10, boolean z10) {
        super(z10);
        this.zzc = jArr;
        this.zzd = i10;
    }

    public final void zza(long j10) {
        zza();
        int i10 = this.zzd;
        long[] jArr = this.zzc;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[zze(jArr.length)];
            System.arraycopy(this.zzc, 0, jArr2, 0, this.zzd);
            this.zzc = jArr2;
        }
        long[] jArr3 = this.zzc;
        int i11 = this.zzd;
        this.zzd = i11 + 1;
        jArr3[i11] = j10;
    }

    final void zzd(int i10) {
        long[] jArr = this.zzc;
        if (i10 <= jArr.length) {
            return;
        }
        if (jArr.length == 0) {
            this.zzc = new long[Math.max(i10, 10)];
            return;
        }
        int length = jArr.length;
        while (length < i10) {
            length = zze(length);
        }
        this.zzc = Arrays.copyOf(this.zzc, length);
    }

    @Override
    public final boolean add(Object obj) {
        zza(((Long) obj).longValue());
        return true;
    }
}
