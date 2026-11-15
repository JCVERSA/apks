package com.google.common.collect;

import java.util.Map;

final class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V> {
    static final RegularImmutableBiMap<Object, Object> EMPTY = new RegularImmutableBiMap<>();

    private final transient Object f29804a;
    final transient Object[] alternatingKeysAndValues;

    private final transient int f29805b;

    private final transient int f29806c;

    private final transient RegularImmutableBiMap f29807d;

    private RegularImmutableBiMap() {
        this.f29804a = null;
        this.alternatingKeysAndValues = new Object[0];
        this.f29805b = 0;
        this.f29806c = 0;
        this.f29807d = this;
    }

    @Override
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new RegularImmutableMap.EntrySet(this, this.alternatingKeysAndValues, this.f29805b, this.f29806c);
    }

    @Override
    ImmutableSet<K> createKeySet() {
        return new RegularImmutableMap.KeySet(this, new RegularImmutableMap.KeysOrValuesAsList(this.alternatingKeysAndValues, this.f29805b, this.f29806c));
    }

    @Override
    public V get(Object obj) {
        V v10 = (V) RegularImmutableMap.get(this.f29804a, this.alternatingKeysAndValues, this.f29806c, this.f29805b, obj);
        if (v10 == null) {
            return null;
        }
        return v10;
    }

    @Override
    boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.f29806c;
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public ImmutableBiMap<V, K> inverse() {
        return this.f29807d;
    }

    RegularImmutableBiMap(Object[] objArr, int i10) {
        this.alternatingKeysAndValues = objArr;
        this.f29806c = i10;
        this.f29805b = 0;
        int iChooseTableSize = i10 >= 2 ? ImmutableSet.chooseTableSize(i10) : 0;
        this.f29804a = RegularImmutableMap.createHashTableOrThrow(objArr, i10, iChooseTableSize, 0);
        this.f29807d = new RegularImmutableBiMap(RegularImmutableMap.createHashTableOrThrow(objArr, i10, iChooseTableSize, 1), objArr, i10, this);
    }

    private RegularImmutableBiMap(Object obj, Object[] objArr, int i10, RegularImmutableBiMap regularImmutableBiMap) {
        this.f29804a = obj;
        this.alternatingKeysAndValues = objArr;
        this.f29805b = 1;
        this.f29806c = i10;
        this.f29807d = regularImmutableBiMap;
    }
}
