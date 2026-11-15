package com.bumptech.glide.repackaged.com.google.common.collect;

import com.bumptech.glide.repackaged.com.google.common.base.Preconditions;
import java.util.Map;
import org.mozilla.javascript.ES6Iterator;

class RegularImmutableBiMap<K, V> extends ImmutableBiMap {
    static final RegularImmutableBiMap<Object, Object> EMPTY = new RegularImmutableBiMap<>(null, null, ImmutableMap.EMPTY_ENTRY_ARRAY, 0, 0);
    private final transient Map.Entry<K, V>[] entries;
    private final transient int hashCode;
    private transient ImmutableBiMap inverse;
    private final transient ImmutableMapEntry<K, V>[] keyTable;
    private final transient int mask;
    private final transient ImmutableMapEntry<K, V>[] valueTable;

    public final class Inverse extends ImmutableBiMap {

        public final class InverseEntrySet extends ImmutableMapEntrySet<V, K> {
            public InverseEntrySet() {
            }

            @Override
            public ImmutableList<Map.Entry<V, K>> createAsList() {
                return new ImmutableAsList<Map.Entry<V, K>>() {
                    @Override
                    public ImmutableCollection<Map.Entry<V, K>> delegateCollection() {
                        return InverseEntrySet.this;
                    }

                    @Override
                    public Map.Entry<V, K> get(int i) {
                        Map.Entry entry = RegularImmutableBiMap.this.entries[i];
                        return Maps.immutableEntry(entry.getValue(), entry.getKey());
                    }
                };
            }

            @Override
            public int hashCode() {
                return RegularImmutableBiMap.this.hashCode;
            }

            @Override
            public boolean isHashCodeFast() {
                return true;
            }

            @Override
            public ImmutableMap<V, K> map() {
                return Inverse.this;
            }

            @Override
            public UnmodifiableIterator<Map.Entry<V, K>> iterator() {
                return asList().iterator();
            }
        }

        private Inverse() {
        }

        @Override
        public ImmutableSet<Map.Entry<V, K>> createEntrySet() {
            return new InverseEntrySet();
        }

        @Override
        public K get(Object obj) {
            if (obj != null && RegularImmutableBiMap.this.valueTable != null) {
                for (ImmutableMapEntry nextInValueBucket = RegularImmutableBiMap.this.valueTable[Hashing.smear(obj.hashCode()) & RegularImmutableBiMap.this.mask]; nextInValueBucket != null; nextInValueBucket = nextInValueBucket.getNextInValueBucket()) {
                    if (obj.equals(nextInValueBucket.getValue())) {
                        return nextInValueBucket.getKey();
                    }
                }
            }
            return null;
        }

        @Override
        public ImmutableBiMap inverse() {
            return RegularImmutableBiMap.this;
        }

        @Override
        public boolean isPartialView() {
            return false;
        }

        @Override
        public int size() {
            return inverse().size();
        }
    }

    private RegularImmutableBiMap(ImmutableMapEntry<K, V>[] immutableMapEntryArr, ImmutableMapEntry<K, V>[] immutableMapEntryArr2, Map.Entry<K, V>[] entryArr, int i, int i2) {
        this.keyTable = immutableMapEntryArr;
        this.valueTable = immutableMapEntryArr2;
        this.entries = entryArr;
        this.mask = i;
        this.hashCode = i2;
    }

    private static void checkNoConflictInValueBucket(Object obj, Map.Entry<?, ?> entry, ImmutableMapEntry<?, ?> immutableMapEntry) {
        while (immutableMapEntry != null) {
            ImmutableMap.checkNoConflict(!obj.equals(immutableMapEntry.getValue()), ES6Iterator.VALUE_PROPERTY, entry, immutableMapEntry);
            immutableMapEntry = immutableMapEntry.getNextInValueBucket();
        }
    }

    public static <K, V> RegularImmutableBiMap<K, V> fromEntryArray(int i, Map.Entry<K, V>[] entryArr) {
        ImmutableMapEntry nonTerminalImmutableBiMapEntry;
        int i2 = i;
        Preconditions.checkPositionIndex(i2, entryArr.length);
        int iClosedTableSize = Hashing.closedTableSize(i2, 1.2d);
        int i3 = iClosedTableSize - 1;
        ImmutableMapEntry[] immutableMapEntryArrCreateEntryArray = ImmutableMapEntry.createEntryArray(iClosedTableSize);
        ImmutableMapEntry[] immutableMapEntryArrCreateEntryArray2 = ImmutableMapEntry.createEntryArray(iClosedTableSize);
        Map.Entry<K, V>[] entryArrCreateEntryArray = i2 == entryArr.length ? entryArr : ImmutableMapEntry.createEntryArray(i);
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            Map.Entry<K, V> entry = entryArr[i4];
            K key = entry.getKey();
            V value = entry.getValue();
            CollectPreconditions.checkEntryNotNull(key, value);
            int iHashCode = key.hashCode();
            int iHashCode2 = value.hashCode();
            int iSmear = Hashing.smear(iHashCode) & i3;
            int iSmear2 = Hashing.smear(iHashCode2) & i3;
            ImmutableMapEntry immutableMapEntry = immutableMapEntryArrCreateEntryArray[iSmear];
            RegularImmutableMap.checkNoConflictInKeyBucket(key, entry, immutableMapEntry);
            ImmutableMapEntry immutableMapEntry2 = immutableMapEntryArrCreateEntryArray2[iSmear2];
            checkNoConflictInValueBucket(value, entry, immutableMapEntry2);
            if (immutableMapEntry2 == null && immutableMapEntry == null) {
                nonTerminalImmutableBiMapEntry = ((entry instanceof ImmutableMapEntry) && ((ImmutableMapEntry) entry).isReusable()) ? (ImmutableMapEntry) entry : new ImmutableMapEntry(key, value);
            } else {
                nonTerminalImmutableBiMapEntry = new ImmutableMapEntry.NonTerminalImmutableBiMapEntry(key, value, immutableMapEntry, immutableMapEntry2);
            }
            immutableMapEntryArrCreateEntryArray[iSmear] = nonTerminalImmutableBiMapEntry;
            immutableMapEntryArrCreateEntryArray2[iSmear2] = nonTerminalImmutableBiMapEntry;
            entryArrCreateEntryArray[i4] = nonTerminalImmutableBiMapEntry;
            i5 += iHashCode ^ iHashCode2;
            i4++;
            i2 = i;
        }
        return new RegularImmutableBiMap<>(immutableMapEntryArrCreateEntryArray, immutableMapEntryArrCreateEntryArray2, entryArrCreateEntryArray, i3, i5);
    }

    @Override
    public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return isEmpty() ? ImmutableSet.of() : new ImmutableMapEntrySet.RegularEntrySet(this, this.entries);
    }

    @Override
    public V get(Object obj) {
        ImmutableMapEntry<K, V>[] immutableMapEntryArr = this.keyTable;
        if (immutableMapEntryArr == null) {
            return null;
        }
        return (V) RegularImmutableMap.get(obj, immutableMapEntryArr, this.mask);
    }

    @Override
    public int hashCode() {
        return this.hashCode;
    }

    @Override
    public ImmutableBiMap inverse() {
        if (isEmpty()) {
            return ImmutableBiMap.of();
        }
        ImmutableBiMap immutableBiMap = this.inverse;
        if (immutableBiMap != null) {
            return immutableBiMap;
        }
        Inverse inverse = new Inverse();
        this.inverse = inverse;
        return inverse;
    }

    @Override
    public boolean isHashCodeFast() {
        return true;
    }

    @Override
    public boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.entries.length;
    }
}
