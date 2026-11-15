package com.google.common.collect;

import androidx.media3.muxer.MuxerUtil;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

class CompactLinkedHashMap<K, V> extends CompactHashMap<K, V> {
    private final boolean accessOrder;
    public transient int i;
    public transient int j;
    transient long[] links;

    public CompactLinkedHashMap() {
        this(3);
    }

    public static <K, V> CompactLinkedHashMap<K, V> create() {
        return new CompactLinkedHashMap<>();
    }

    public static <K, V> CompactLinkedHashMap<K, V> createWithExpectedSize(int i) {
        return new CompactLinkedHashMap<>(i);
    }

    @Override
    public void accessEntry(int i) {
        if (this.accessOrder) {
            x(s(i), getSuccessor(i));
            x(this.j, i);
            x(i, -2);
            incrementModCount();
        }
    }

    @Override
    public int adjustAfterRemove(int i, int i2) {
        return i >= size() ? i2 : i;
    }

    @Override
    public int allocArrays() {
        int iAllocArrays = super.allocArrays();
        this.links = new long[iAllocArrays];
        return iAllocArrays;
    }

    @Override
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        this.i = -2;
        this.j = -2;
        long[] jArr = this.links;
        if (jArr != null) {
            Arrays.fill(jArr, 0, size(), 0L);
        }
        super.clear();
    }

    @Override
    public Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> mapConvertToHashFloodingResistantImplementation = super.convertToHashFloodingResistantImplementation();
        this.links = null;
        return mapConvertToHashFloodingResistantImplementation;
    }

    @Override
    public Map<K, V> createHashFloodingResistantDelegate(int i) {
        return new LinkedHashMap(i, 1.0f, this.accessOrder);
    }

    @Override
    public int firstEntryIndex() {
        return this.i;
    }

    @Override
    public int getSuccessor(int i) {
        return ((int) t(i)) - 1;
    }

    @Override
    public void init(int i) {
        super.init(i);
        this.i = -2;
        this.j = -2;
    }

    @Override
    public void insertEntry(int i, K k, V v, int i2, int i3) {
        super.insertEntry(i, k, v, i2, i3);
        x(this.j, i);
        x(i, -2);
    }

    @Override
    public void moveLastEntry(int i, int i2) {
        int size = size() - 1;
        super.moveLastEntry(i, i2);
        x(s(i), getSuccessor(i));
        if (i < size) {
            x(s(size), i);
            x(i, getSuccessor(size));
        }
        v(size, 0L);
    }

    @Override
    public void resizeEntries(int i) {
        super.resizeEntries(i);
        this.links = Arrays.copyOf(u(), i);
    }

    public final int s(int i) {
        return ((int) (t(i) >>> 32)) - 1;
    }

    public final long t(int i) {
        return u()[i];
    }

    public final long[] u() {
        long[] jArr = this.links;
        Objects.requireNonNull(jArr);
        return jArr;
    }

    public final void v(int i, long j) {
        u()[i] = j;
    }

    public final void w(int i, int i2) {
        v(i, (t(i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) (i2 + 1)) << 32));
    }

    public final void x(int i, int i2) {
        if (i == -2) {
            this.i = i2;
        } else {
            y(i, i2);
        }
        if (i2 == -2) {
            this.j = i;
        } else {
            w(i2, i);
        }
    }

    public final void y(int i, int i2) {
        v(i, (t(i) & (-4294967296L)) | (((long) (i2 + 1)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public CompactLinkedHashMap(int i) {
        this(i, false);
    }

    public CompactLinkedHashMap(int i, boolean z) {
        super(i);
        this.accessOrder = z;
    }
}
