package com.google.common.collect;

import java.util.Map;

final class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V> {
    static final RegularImmutableBiMap<Object, Object> EMPTY = new RegularImmutableBiMap<>();
    final transient Object[] alternatingKeysAndValues;
    public final transient Object b;
    public final transient int c;
    public final transient int d;
    public final transient RegularImmutableBiMap e;

    private RegularImmutableBiMap() {
        this.b = null;
        this.alternatingKeysAndValues = new Object[0];
        this.c = 0;
        this.d = 0;
        this.e = this;
    }

    @Override
    public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new RegularImmutableMap.EntrySet(this, this.alternatingKeysAndValues, this.c, this.d);
    }

    @Override
    public ImmutableSet<K> createKeySet() {
        return new RegularImmutableMap.KeySet(this, new RegularImmutableMap.KeysOrValuesAsList(this.alternatingKeysAndValues, this.c, this.d));
    }

    @Override
    public V get(Object obj) {
        V v = (V) RegularImmutableMap.get(this.b, this.alternatingKeysAndValues, this.d, this.c, obj);
        if (v == null) {
            return null;
        }
        return v;
    }

    @Override
    public boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.d;
    }

    @Override
    public Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public ImmutableBiMap<V, K> inverse() {
        return this.e;
    }

    public RegularImmutableBiMap(Object[] objArr, int i) {
        this.alternatingKeysAndValues = objArr;
        this.d = i;
        this.c = 0;
        int iChooseTableSize = i >= 2 ? ImmutableSet.chooseTableSize(i) : 0;
        this.b = RegularImmutableMap.createHashTableOrThrow(objArr, i, iChooseTableSize, 0);
        this.e = new RegularImmutableBiMap(RegularImmutableMap.createHashTableOrThrow(objArr, i, iChooseTableSize, 1), objArr, i, this);
    }

    public RegularImmutableBiMap(Object obj, Object[] objArr, int i, RegularImmutableBiMap regularImmutableBiMap) {
        this.b = obj;
        this.alternatingKeysAndValues = objArr;
        this.c = 1;
        this.d = i;
        this.e = regularImmutableBiMap;
    }
}
