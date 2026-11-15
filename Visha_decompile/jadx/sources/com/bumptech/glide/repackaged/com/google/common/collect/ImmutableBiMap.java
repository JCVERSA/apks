package com.bumptech.glide.repackaged.com.google.common.collect;

import java.util.Arrays;

public abstract class ImmutableBiMap extends ImmutableMap implements BiMap {

    public static final class Builder<K, V> extends ImmutableMap.Builder<K, V> {
        public ImmutableBiMap build() {
            int i = this.size;
            if (i == 0) {
                return ImmutableBiMap.of();
            }
            if (i == 1) {
                return ImmutableBiMap.of((Object) this.entries[0].getKey(), (Object) this.entries[0].getValue());
            }
            if (this.valueComparator != null) {
                if (this.entriesUsed) {
                    this.entries = (ImmutableMapEntry[]) ObjectArrays.arraysCopyOf(this.entries, i);
                }
                Arrays.sort(this.entries, 0, this.size, Ordering.from(this.valueComparator).onResultOf(Maps.valueFunction()));
            }
            int i2 = this.size;
            ImmutableMapEntry<K, V>[] immutableMapEntryArr = this.entries;
            this.entriesUsed = i2 == immutableMapEntryArr.length;
            return RegularImmutableBiMap.fromEntryArray(i2, immutableMapEntryArr);
        }

        @Override
        public Builder<K, V> put(K k, V v) {
            super.put((Object) k, (Object) v);
            return this;
        }
    }

    public static <K, V> Builder<K, V> builder() {
        return new Builder<>();
    }

    public static ImmutableBiMap of() {
        return RegularImmutableBiMap.EMPTY;
    }

    public abstract ImmutableBiMap inverse();

    public static ImmutableBiMap of(Object obj, Object obj2) {
        return new SingletonImmutableBiMap(obj, obj2);
    }

    @Override
    public ImmutableSet<Object> values() {
        return inverse().keySet();
    }
}
