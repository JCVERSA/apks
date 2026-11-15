package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public class TreeMultimap<K, V> extends AbstractSortedKeySortedSetMultimap<K, V> {
    private static final long serialVersionUID = 0;
    private transient Comparator<? super K> keyComparator;
    private transient Comparator<? super V> valueComparator;

    TreeMultimap(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        super(new TreeMap(comparator));
        this.keyComparator = comparator;
        this.valueComparator = comparator2;
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create() {
        return new TreeMultimap<>(Ordering.natural(), Ordering.natural());
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Comparator<? super K> comparator = (Comparator) objectInputStream.readObject();
        Objects.requireNonNull(comparator);
        this.keyComparator = comparator;
        Comparator<? super V> comparator2 = (Comparator) objectInputStream.readObject();
        Objects.requireNonNull(comparator2);
        this.valueComparator = comparator2;
        setMap(new TreeMap(this.keyComparator));
        w3.d(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(keyComparator());
        objectOutputStream.writeObject(valueComparator());
        w3.j(this, objectOutputStream);
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
    Map<K, Collection<V>> createAsMap() {
        return createMaybeNavigableAsMap();
    }

    @Override
    public Set entries() {
        return super.entries();
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Deprecated
    public Comparator<? super K> keyComparator() {
        return this.keyComparator;
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
    public SortedSet removeAll(Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public SortedSet replaceValues(Object obj, Iterable iterable) {
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
    public Comparator<? super V> valueComparator() {
        return this.valueComparator;
    }

    @Override
    public Collection values() {
        return super.values();
    }

    public static <K, V> TreeMultimap<K, V> create(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        return new TreeMultimap<>((Comparator) com.google.common.base.m.o(comparator), (Comparator) com.google.common.base.m.o(comparator2));
    }

    @Override
    public boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create(j3 j3Var) {
        return new TreeMultimap<>(Ordering.natural(), Ordering.natural(), j3Var);
    }

    @Override
    public NavigableMap<K, Collection<V>> asMap() {
        return (NavigableMap) super.asMap();
    }

    @Override
    public SortedSet<V> createCollection() {
        return new TreeSet(this.valueComparator);
    }

    @Override
    public NavigableSet<K> keySet() {
        return (NavigableSet) super.keySet();
    }

    private TreeMultimap(Comparator<? super K> comparator, Comparator<? super V> comparator2, j3 j3Var) {
        this(comparator, comparator2);
        putAll(j3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    Collection<V> createCollection(K k10) {
        if (k10 == 0) {
            keyComparator().compare(k10, k10);
        }
        return super.createCollection(k10);
    }

    @Override
    public NavigableSet<V> get(K k10) {
        return (NavigableSet) super.get((Object) k10);
    }
}
