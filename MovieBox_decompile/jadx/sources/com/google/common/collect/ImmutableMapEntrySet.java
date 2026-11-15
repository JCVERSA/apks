package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Map;

abstract class ImmutableMapEntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {

    private static class EntrySetSerializedForm<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<K, V> map;

        EntrySetSerializedForm(ImmutableMap<K, V> immutableMap) {
            this.map = immutableMap;
        }

        Object readResolve() {
            return this.map.entrySet();
        }
    }

    ImmutableMapEntrySet() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use EntrySetSerializedForm");
    }

    @Override
    public boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        V v10 = map().get(entry.getKey());
        return v10 != null && v10.equals(entry.getValue());
    }

    @Override
    public int hashCode() {
        return map().hashCode();
    }

    @Override
    boolean isHashCodeFast() {
        return map().isHashCodeFast();
    }

    @Override
    boolean isPartialView() {
        return map().isPartialView();
    }

    abstract ImmutableMap<K, V> map();

    @Override
    public int size() {
        return map().size();
    }

    @Override
    Object writeReplace() {
        return new EntrySetSerializedForm(map());
    }
}
