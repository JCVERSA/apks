package com.bumptech.glide.repackaged.com.google.common.collect;

final class ImmutableMapKeySet<K, V> extends ImmutableSet.Indexed<K> {
    private final ImmutableMap<K, V> map;

    public ImmutableMapKeySet(ImmutableMap<K, V> immutableMap) {
        this.map = immutableMap;
    }

    @Override
    public boolean contains(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override
    public K get(int i) {
        return this.map.entrySet().asList().get(i).getKey();
    }

    @Override
    public boolean isPartialView() {
        return true;
    }

    @Override
    public int size() {
        return this.map.size();
    }

    @Override
    public UnmodifiableIterator<K> iterator() {
        return this.map.keyIterator();
    }
}
