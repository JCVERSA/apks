package com.google.common.collect;

import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

class CompactLinkedHashMap<K, V> extends CompactHashMap<K, V> {
    private final boolean accessOrder;

    private transient int f29531h;

    private transient int f29532i;
    transient long[] links;

    CompactLinkedHashMap() {
        this(3);
    }

    public static <K, V> CompactLinkedHashMap<K, V> create() {
        return new CompactLinkedHashMap<>();
    }

    public static <K, V> CompactLinkedHashMap<K, V> createWithExpectedSize(int i10) {
        return new CompactLinkedHashMap<>(i10);
    }

    private int s(int i10) {
        return ((int) (t(i10) >>> 32)) - 1;
    }

    private long t(int i10) {
        return u()[i10];
    }

    private long[] u() {
        long[] jArr = this.links;
        Objects.requireNonNull(jArr);
        return jArr;
    }

    private void v(int i10, long j10) {
        u()[i10] = j10;
    }

    private void w(int i10, int i11) {
        v(i10, (t(i10) & 4294967295L) | (((long) (i11 + 1)) << 32));
    }

    private void x(int i10, int i11) {
        if (i10 == -2) {
            this.f29531h = i11;
        } else {
            y(i10, i11);
        }
        if (i11 == -2) {
            this.f29532i = i10;
        } else {
            w(i11, i10);
        }
    }

    private void y(int i10, int i11) {
        v(i10, (t(i10) & (-4294967296L)) | (((long) (i11 + 1)) & 4294967295L));
    }

    @Override
    void accessEntry(int i10) {
        if (this.accessOrder) {
            x(s(i10), getSuccessor(i10));
            x(this.f29532i, i10);
            x(i10, -2);
            incrementModCount();
        }
    }

    @Override
    int adjustAfterRemove(int i10, int i11) {
        return i10 >= size() ? i11 : i10;
    }

    @Override
    int allocArrays() {
        int iAllocArrays = super.allocArrays();
        this.links = new long[iAllocArrays];
        return iAllocArrays;
    }

    @Override
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        this.f29531h = -2;
        this.f29532i = -2;
        long[] jArr = this.links;
        if (jArr != null) {
            Arrays.fill(jArr, 0, size(), 0L);
        }
        super.clear();
    }

    @Override
    Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> mapConvertToHashFloodingResistantImplementation = super.convertToHashFloodingResistantImplementation();
        this.links = null;
        return mapConvertToHashFloodingResistantImplementation;
    }

    @Override
    Map<K, V> createHashFloodingResistantDelegate(int i10) {
        return new LinkedHashMap(i10, 1.0f, this.accessOrder);
    }

    @Override
    int firstEntryIndex() {
        return this.f29531h;
    }

    @Override
    int getSuccessor(int i10) {
        return ((int) t(i10)) - 1;
    }

    @Override
    void init(int i10) {
        super.init(i10);
        this.f29531h = -2;
        this.f29532i = -2;
    }

    @Override
    void insertEntry(int i10, K k10, V v10, int i11, int i12) {
        super.insertEntry(i10, k10, v10, i11, i12);
        x(this.f29532i, i10);
        x(i10, -2);
    }

    @Override
    void moveLastEntry(int i10, int i11) {
        int size = size() - 1;
        super.moveLastEntry(i10, i11);
        x(s(i10), getSuccessor(i10));
        if (i10 < size) {
            x(s(size), i10);
            x(i10, getSuccessor(size));
        }
        v(size, 0L);
    }

    @Override
    void resizeEntries(int i10) {
        super.resizeEntries(i10);
        this.links = Arrays.copyOf(u(), i10);
    }

    CompactLinkedHashMap(int i10) {
        this(i10, false);
    }

    CompactLinkedHashMap(int i10, boolean z10) {
        super(i10);
        this.accessOrder = z10;
    }
}
