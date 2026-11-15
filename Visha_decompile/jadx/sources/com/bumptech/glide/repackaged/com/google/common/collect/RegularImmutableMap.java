package com.bumptech.glide.repackaged.com.google.common.collect;

import java.util.Map;

final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {
    private final transient Map.Entry<K, V>[] entries;
    private final transient int mask;
    private final transient ImmutableMapEntry<K, V>[] table;

    public static void checkNoConflictInKeyBucket(Object obj, Map.Entry<?, ?> entry, ImmutableMapEntry<?, ?> immutableMapEntry) {
        while (immutableMapEntry != null) {
            ImmutableMap.checkNoConflict(!obj.equals(immutableMapEntry.getKey()), "key", entry, immutableMapEntry);
            immutableMapEntry = immutableMapEntry.getNextInKeyBucket();
        }
    }

    @Override
    public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new ImmutableMapEntrySet.RegularEntrySet(this, this.entries);
    }

    @Override
    public V get(Object obj) {
        return (V) get(obj, this.table, this.mask);
    }

    @Override
    public boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.entries.length;
    }

    public static <V> V get(Object obj, ImmutableMapEntry<?, V>[] immutableMapEntryArr, int i) {
        if (obj == null) {
            return null;
        }
        for (ImmutableMapEntry<?, V> nextInKeyBucket = immutableMapEntryArr[i & Hashing.smear(obj.hashCode())]; nextInKeyBucket != null; nextInKeyBucket = nextInKeyBucket.getNextInKeyBucket()) {
            if (obj.equals(nextInKeyBucket.getKey())) {
                return nextInKeyBucket.getValue();
            }
        }
        return null;
    }
}
