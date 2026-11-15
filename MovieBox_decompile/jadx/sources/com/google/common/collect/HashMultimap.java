package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

public final class HashMultimap<K, V> extends HashMultimapGwtSerializationDependencies<K, V> {
    private static final int DEFAULT_VALUES_PER_KEY = 2;
    private static final long serialVersionUID = 0;
    transient int expectedValuesPerKey;

    private HashMultimap() {
        this(12, 2);
    }

    public static <K, V> HashMultimap<K, V> create() {
        return new HashMultimap<>();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.expectedValuesPerKey = 2;
        int iH = w3.h(objectInputStream);
        setMap(r3.d(12));
        w3.e(this, objectInputStream, iH);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        w3.j(this, objectOutputStream);
    }

    @Override
    public Map asMap() {
        return super.asMap();
    }

    @Override
    public void clear() {
        super.clear();
    }

    @Override
    public boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override
    public boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override
    public Set entries() {
        return super.entries();
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set get(Object obj) {
        return super.get(obj);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public Set keySet() {
        return super.keySet();
    }

    @Override
    public l3 keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override
    public boolean putAll(j3 j3Var) {
        return super.putAll(j3Var);
    }

    @Override
    public boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override
    public Set removeAll(Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set replaceValues(Object obj, Iterable iterable) {
        return super.replaceValues(obj, iterable);
    }

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public Collection values() {
        return super.values();
    }

    private HashMultimap(int i10, int i11) {
        super(r3.d(i10));
        this.expectedValuesPerKey = 2;
        com.google.common.base.m.d(i11 >= 0);
        this.expectedValuesPerKey = i11;
    }

    public static <K, V> HashMultimap<K, V> create(int i10, int i11) {
        return new HashMultimap<>(i10, i11);
    }

    @Override
    public Set<V> createCollection() {
        return r3.e(this.expectedValuesPerKey);
    }

    @Override
    public boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    public static <K, V> HashMultimap<K, V> create(j3 j3Var) {
        return new HashMultimap<>(j3Var);
    }

    private HashMultimap(j3 j3Var) {
        super(r3.d(j3Var.keySet().size()));
        this.expectedValuesPerKey = 2;
        putAll(j3Var);
    }
}
