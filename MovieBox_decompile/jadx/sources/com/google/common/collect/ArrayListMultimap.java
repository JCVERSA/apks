package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ArrayListMultimap<K, V> extends ArrayListMultimapGwtSerializationDependencies<K, V> {
    private static final int DEFAULT_VALUES_PER_KEY = 3;
    private static final long serialVersionUID = 0;
    transient int expectedValuesPerKey;

    private ArrayListMultimap() {
        this(12, 3);
    }

    public static <K, V> ArrayListMultimap<K, V> create() {
        return new ArrayListMultimap<>();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.expectedValuesPerKey = 3;
        int iH = w3.h(objectInputStream);
        setMap(CompactHashMap.create());
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
    public Collection entries() {
        return super.entries();
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public List get(Object obj) {
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
    public List removeAll(Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public List replaceValues(Object obj, Iterable iterable) {
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

    @Deprecated
    public void trimToSize() {
        Iterator<Collection<V>> it = backingMap().values().iterator();
        while (it.hasNext()) {
            ((ArrayList) it.next()).trimToSize();
        }
    }

    @Override
    public Collection values() {
        return super.values();
    }

    private ArrayListMultimap(int i10, int i11) {
        super(r3.d(i10));
        e2.b(i11, "expectedValuesPerKey");
        this.expectedValuesPerKey = i11;
    }

    public static <K, V> ArrayListMultimap<K, V> create(int i10, int i11) {
        return new ArrayListMultimap<>(i10, i11);
    }

    @Override
    public List<V> createCollection() {
        return new ArrayList(this.expectedValuesPerKey);
    }

    @Override
    public boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    public static <K, V> ArrayListMultimap<K, V> create(j3 j3Var) {
        return new ArrayListMultimap<>(j3Var);
    }

    private ArrayListMultimap(j3 j3Var) {
        this(j3Var.keySet().size(), j3Var instanceof ArrayListMultimap ? ((ArrayListMultimap) j3Var).expectedValuesPerKey : 3);
        putAll(j3Var);
    }
}
