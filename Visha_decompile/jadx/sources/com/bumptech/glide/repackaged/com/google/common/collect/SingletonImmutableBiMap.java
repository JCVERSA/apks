package com.bumptech.glide.repackaged.com.google.common.collect;

import java.util.Map;

final class SingletonImmutableBiMap extends ImmutableBiMap {
    transient ImmutableBiMap inverse;
    final transient Object singleKey;
    final transient Object singleValue;

    public SingletonImmutableBiMap(Object obj, Object obj2) {
        CollectPreconditions.checkEntryNotNull(obj, obj2);
        this.singleKey = obj;
        this.singleValue = obj2;
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.singleKey.equals(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.singleValue.equals(obj);
    }

    @Override
    public ImmutableSet<Map.Entry<Object, Object>> createEntrySet() {
        return ImmutableSet.of(Maps.immutableEntry(this.singleKey, this.singleValue));
    }

    @Override
    public ImmutableSet<Object> createKeySet() {
        return ImmutableSet.of(this.singleKey);
    }

    @Override
    public Object get(Object obj) {
        if (this.singleKey.equals(obj)) {
            return this.singleValue;
        }
        return null;
    }

    @Override
    public ImmutableBiMap inverse() {
        ImmutableBiMap immutableBiMap = this.inverse;
        if (immutableBiMap != null) {
            return immutableBiMap;
        }
        SingletonImmutableBiMap singletonImmutableBiMap = new SingletonImmutableBiMap(this.singleValue, this.singleKey, this);
        this.inverse = singletonImmutableBiMap;
        return singletonImmutableBiMap;
    }

    @Override
    public boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return 1;
    }

    private SingletonImmutableBiMap(Object obj, Object obj2, ImmutableBiMap immutableBiMap) {
        this.singleKey = obj;
        this.singleValue = obj2;
        this.inverse = immutableBiMap;
    }
}
