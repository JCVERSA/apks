package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class k0 extends c implements y.i, RandomAccess, c1 {
    private static final k0 EMPTY_LIST = new k0(new long[0], 0, false);
    private long[] array;
    private int size;

    k0() {
        this(new long[10], 0, true);
    }

    public static k0 emptyList() {
        return EMPTY_LIST;
    }

    private void ensureIndexInRange(int i10) {
        if (i10 < 0 || i10 >= this.size) {
            throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i10));
        }
    }

    private String makeOutOfBoundsExceptionMessage(int i10) {
        return "Index:" + i10 + ", Size:" + this.size;
    }

    @Override
    public boolean addAll(Collection<? extends Long> collection) {
        ensureIsMutable();
        y.checkNotNull(collection);
        if (!(collection instanceof k0)) {
            return super.addAll(collection);
        }
        k0 k0Var = (k0) collection;
        int i10 = k0Var.size;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.size;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.array;
        if (i12 > jArr.length) {
            this.array = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(k0Var.array, 0, this.array, this.size, k0Var.size);
        this.size = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override
    public void addLong(long j10) {
        ensureIsMutable();
        int i10 = this.size;
        long[] jArr = this.array;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.array = jArr2;
        }
        long[] jArr3 = this.array;
        int i11 = this.size;
        this.size = i11 + 1;
        jArr3[i11] = j10;
    }

    @Override
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return super.equals(obj);
        }
        k0 k0Var = (k0) obj;
        if (this.size != k0Var.size) {
            return false;
        }
        long[] jArr = k0Var.array;
        for (int i10 = 0; i10 < this.size; i10++) {
            if (this.array[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public long getLong(int i10) {
        ensureIndexInRange(i10);
        return this.array[i10];
    }

    @Override
    public int hashCode() {
        int iHashLong = 1;
        for (int i10 = 0; i10 < this.size; i10++) {
            iHashLong = (iHashLong * 31) + y.hashLong(this.array[i10]);
        }
        return iHashLong;
    }

    @Override
    public int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.array[i10] == jLongValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    protected void removeRange(int i10, int i11) {
        ensureIsMutable();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.array;
        System.arraycopy(jArr, i11, jArr, i10, this.size - i11);
        this.size -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override
    public long setLong(int i10, long j10) {
        ensureIsMutable();
        ensureIndexInRange(i10);
        long[] jArr = this.array;
        long j11 = jArr[i10];
        jArr[i10] = j10;
        return j11;
    }

    @Override
    public int size() {
        return this.size;
    }

    private k0(long[] jArr, int i10, boolean z10) {
        super(z10);
        this.array = jArr;
        this.size = i10;
    }

    @Override
    public Long get(int i10) {
        return Long.valueOf(getLong(i10));
    }

    @Override
    public y.i mutableCopyWithCapacity(int i10) {
        if (i10 >= this.size) {
            return new k0(Arrays.copyOf(this.array, i10), this.size, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public Long remove(int i10) {
        ensureIsMutable();
        ensureIndexInRange(i10);
        long[] jArr = this.array;
        long j10 = jArr[i10];
        int i11 = this.size;
        if (i10 < i11 - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (i11 - i10) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override
    public Long set(int i10, Long l10) {
        return Long.valueOf(setLong(i10, l10.longValue()));
    }

    @Override
    public boolean add(Long l10) {
        addLong(l10.longValue());
        return true;
    }

    @Override
    public void add(int i10, Long l10) {
        addLong(i10, l10.longValue());
    }

    private void addLong(int i10, long j10) {
        int i11;
        ensureIsMutable();
        if (i10 >= 0 && i10 <= (i11 = this.size)) {
            long[] jArr = this.array;
            if (i11 < jArr.length) {
                System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
            } else {
                long[] jArr2 = new long[((i11 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i10);
                System.arraycopy(this.array, i10, jArr2, i10 + 1, this.size - i10);
                this.array = jArr2;
            }
            this.array[i10] = j10;
            this.size++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i10));
    }
}
