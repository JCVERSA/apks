package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

public final class LinkedHashMultimap<K, V> extends LinkedHashMultimapGwtSerializationDependencies<K, V> {
    private static final int DEFAULT_KEY_CAPACITY = 16;
    private static final int DEFAULT_VALUE_SET_CAPACITY = 2;
    static final double VALUE_SET_LOAD_FACTOR = 1.0d;
    private static final long serialVersionUID = 1;
    private transient ValueEntry<K, V> multimapHeaderEntry;
    transient int valueSetCapacity;

    static final class ValueEntry<K, V> extends ImmutableEntry<K, V> implements c {
        ValueEntry<K, V> nextInValueBucket;
        private ValueEntry<K, V> predecessorInMultimap;
        private c predecessorInValueSet;
        final int smearedValueHash;
        private ValueEntry<K, V> successorInMultimap;
        private c successorInValueSet;

        ValueEntry(K k10, V v10, int i10, ValueEntry<K, V> valueEntry) {
            super(k10, v10);
            this.smearedValueHash = i10;
            this.nextInValueBucket = valueEntry;
        }

        static <K, V> ValueEntry<K, V> newHeader() {
            return new ValueEntry<>(null, null, 0, null);
        }

        public ValueEntry<K, V> getPredecessorInMultimap() {
            ValueEntry<K, V> valueEntry = this.predecessorInMultimap;
            Objects.requireNonNull(valueEntry);
            return valueEntry;
        }

        @Override
        public c getPredecessorInValueSet() {
            c cVar = this.predecessorInValueSet;
            Objects.requireNonNull(cVar);
            return cVar;
        }

        public ValueEntry<K, V> getSuccessorInMultimap() {
            ValueEntry<K, V> valueEntry = this.successorInMultimap;
            Objects.requireNonNull(valueEntry);
            return valueEntry;
        }

        @Override
        public c getSuccessorInValueSet() {
            c cVar = this.successorInValueSet;
            Objects.requireNonNull(cVar);
            return cVar;
        }

        boolean matchesValue(Object obj, int i10) {
            return this.smearedValueHash == i10 && com.google.common.base.j.a(getValue(), obj);
        }

        public void setPredecessorInMultimap(ValueEntry<K, V> valueEntry) {
            this.predecessorInMultimap = valueEntry;
        }

        @Override
        public void setPredecessorInValueSet(c cVar) {
            this.predecessorInValueSet = cVar;
        }

        public void setSuccessorInMultimap(ValueEntry<K, V> valueEntry) {
            this.successorInMultimap = valueEntry;
        }

        @Override
        public void setSuccessorInValueSet(c cVar) {
            this.successorInValueSet = cVar;
        }
    }

    class a implements Iterator {

        ValueEntry f29666a;

        ValueEntry f29667b;

        a() {
            this.f29666a = LinkedHashMultimap.this.multimapHeaderEntry.getSuccessorInMultimap();
        }

        @Override
        public Map.Entry next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            ValueEntry valueEntry = this.f29666a;
            this.f29667b = valueEntry;
            this.f29666a = valueEntry.getSuccessorInMultimap();
            return valueEntry;
        }

        @Override
        public boolean hasNext() {
            return this.f29666a != LinkedHashMultimap.this.multimapHeaderEntry;
        }

        @Override
        public void remove() {
            com.google.common.base.m.v(this.f29667b != null, "no calls to next() since the last call to remove()");
            LinkedHashMultimap.this.remove(this.f29667b.getKey(), this.f29667b.getValue());
            this.f29667b = null;
        }
    }

    final class b extends Sets.e implements c {

        private final Object f29669a;

        ValueEntry[] f29670b;

        private int f29671c = 0;

        private int f29672d = 0;

        private c f29673e = this;

        private c f29674f = this;

        class a implements Iterator {

            c f29676a;

            ValueEntry f29677b;

            int f29678c;

            a() {
                this.f29676a = b.this.f29673e;
                this.f29678c = b.this.f29672d;
            }

            private void a() {
                if (b.this.f29672d != this.f29678c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public boolean hasNext() {
                a();
                return this.f29676a != b.this;
            }

            @Override
            public Object next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                ValueEntry valueEntry = (ValueEntry) this.f29676a;
                V value = valueEntry.getValue();
                this.f29677b = valueEntry;
                this.f29676a = valueEntry.getSuccessorInValueSet();
                return value;
            }

            @Override
            public void remove() {
                a();
                com.google.common.base.m.v(this.f29677b != null, "no calls to next() since the last call to remove()");
                b.this.remove(this.f29677b.getValue());
                this.f29678c = b.this.f29672d;
                this.f29677b = null;
            }
        }

        b(Object obj, int i10) {
            this.f29669a = obj;
            this.f29670b = new ValueEntry[v2.a(i10, 1.0d)];
        }

        private int c() {
            return this.f29670b.length - 1;
        }

        private void e() {
            if (v2.b(this.f29671c, this.f29670b.length, 1.0d)) {
                int length = this.f29670b.length * 2;
                ValueEntry<K, V>[] valueEntryArr = new ValueEntry[length];
                this.f29670b = valueEntryArr;
                int i10 = length - 1;
                for (c successorInValueSet = this.f29673e; successorInValueSet != this; successorInValueSet = successorInValueSet.getSuccessorInValueSet()) {
                    ValueEntry<K, V> valueEntry = (ValueEntry) successorInValueSet;
                    int i11 = valueEntry.smearedValueHash & i10;
                    valueEntry.nextInValueBucket = valueEntryArr[i11];
                    valueEntryArr[i11] = valueEntry;
                }
            }
        }

        @Override
        public boolean add(Object obj) {
            int iD = v2.d(obj);
            int iC = c() & iD;
            ValueEntry<K, V> valueEntry = this.f29670b[iC];
            for (ValueEntry<K, V> valueEntry2 = valueEntry; valueEntry2 != null; valueEntry2 = valueEntry2.nextInValueBucket) {
                if (valueEntry2.matchesValue(obj, iD)) {
                    return false;
                }
            }
            ValueEntry valueEntry3 = new ValueEntry(this.f29669a, obj, iD, valueEntry);
            LinkedHashMultimap.succeedsInValueSet(this.f29674f, valueEntry3);
            LinkedHashMultimap.succeedsInValueSet(valueEntry3, this);
            LinkedHashMultimap.succeedsInMultimap(LinkedHashMultimap.this.multimapHeaderEntry.getPredecessorInMultimap(), valueEntry3);
            LinkedHashMultimap.succeedsInMultimap(valueEntry3, LinkedHashMultimap.this.multimapHeaderEntry);
            this.f29670b[iC] = valueEntry3;
            this.f29671c++;
            this.f29672d++;
            e();
            return true;
        }

        @Override
        public void clear() {
            Arrays.fill(this.f29670b, (Object) null);
            this.f29671c = 0;
            for (c successorInValueSet = this.f29673e; successorInValueSet != this; successorInValueSet = successorInValueSet.getSuccessorInValueSet()) {
                LinkedHashMultimap.deleteFromMultimap((ValueEntry) successorInValueSet);
            }
            LinkedHashMultimap.succeedsInValueSet(this, this);
            this.f29672d++;
        }

        @Override
        public boolean contains(Object obj) {
            int iD = v2.d(obj);
            for (ValueEntry<K, V> valueEntry = this.f29670b[c() & iD]; valueEntry != null; valueEntry = valueEntry.nextInValueBucket) {
                if (valueEntry.matchesValue(obj, iD)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public c getPredecessorInValueSet() {
            return this.f29674f;
        }

        @Override
        public c getSuccessorInValueSet() {
            return this.f29673e;
        }

        @Override
        public Iterator iterator() {
            return new a();
        }

        @Override
        public boolean remove(Object obj) {
            int iD = v2.d(obj);
            int iC = c() & iD;
            ValueEntry<K, V> valueEntry = null;
            for (ValueEntry<K, V> valueEntry2 = this.f29670b[iC]; valueEntry2 != null; valueEntry2 = valueEntry2.nextInValueBucket) {
                if (valueEntry2.matchesValue(obj, iD)) {
                    if (valueEntry == null) {
                        this.f29670b[iC] = valueEntry2.nextInValueBucket;
                    } else {
                        valueEntry.nextInValueBucket = valueEntry2.nextInValueBucket;
                    }
                    LinkedHashMultimap.deleteFromValueSet(valueEntry2);
                    LinkedHashMultimap.deleteFromMultimap(valueEntry2);
                    this.f29671c--;
                    this.f29672d++;
                    return true;
                }
                valueEntry = valueEntry2;
            }
            return false;
        }

        @Override
        public void setPredecessorInValueSet(c cVar) {
            this.f29674f = cVar;
        }

        @Override
        public void setSuccessorInValueSet(c cVar) {
            this.f29673e = cVar;
        }

        @Override
        public int size() {
            return this.f29671c;
        }
    }

    private interface c {
        c getPredecessorInValueSet();

        c getSuccessorInValueSet();

        void setPredecessorInValueSet(c cVar);

        void setSuccessorInValueSet(c cVar);
    }

    private LinkedHashMultimap(int i10, int i11) {
        super(r3.f(i10));
        this.valueSetCapacity = 2;
        e2.b(i11, "expectedValuesPerKey");
        this.valueSetCapacity = i11;
        ValueEntry<K, V> valueEntryNewHeader = ValueEntry.newHeader();
        this.multimapHeaderEntry = valueEntryNewHeader;
        succeedsInMultimap(valueEntryNewHeader, valueEntryNewHeader);
    }

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<>(16, 2);
    }

    public static <K, V> void deleteFromMultimap(ValueEntry<K, V> valueEntry) {
        succeedsInMultimap(valueEntry.getPredecessorInMultimap(), valueEntry.getSuccessorInMultimap());
    }

    public static <K, V> void deleteFromValueSet(c cVar) {
        succeedsInValueSet(cVar.getPredecessorInValueSet(), cVar.getSuccessorInValueSet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        ValueEntry<K, V> valueEntryNewHeader = ValueEntry.newHeader();
        this.multimapHeaderEntry = valueEntryNewHeader;
        succeedsInMultimap(valueEntryNewHeader, valueEntryNewHeader);
        this.valueSetCapacity = 2;
        int i10 = objectInputStream.readInt();
        Map mapF = r3.f(12);
        for (int i11 = 0; i11 < i10; i11++) {
            Object object = objectInputStream.readObject();
            mapF.put(object, createCollection(object));
        }
        int i12 = objectInputStream.readInt();
        for (int i13 = 0; i13 < i12; i13++) {
            Object object2 = objectInputStream.readObject();
            Object object3 = objectInputStream.readObject();
            Collection collection = (Collection) mapF.get(object2);
            Objects.requireNonNull(collection);
            collection.add(object3);
        }
        setMap(mapF);
    }

    public static <K, V> void succeedsInMultimap(ValueEntry<K, V> valueEntry, ValueEntry<K, V> valueEntry2) {
        valueEntry.setSuccessorInMultimap(valueEntry2);
        valueEntry2.setPredecessorInMultimap(valueEntry);
    }

    public static <K, V> void succeedsInValueSet(c cVar, c cVar2) {
        cVar.setSuccessorInValueSet(cVar2);
        cVar2.setPredecessorInValueSet(cVar);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(keySet().size());
        Iterator<K> it = keySet().iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override
    public Map asMap() {
        return super.asMap();
    }

    @Override
    public void clear() {
        super.clear();
        ValueEntry<K, V> valueEntry = this.multimapHeaderEntry;
        succeedsInMultimap(valueEntry, valueEntry);
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
    Iterator<Map.Entry<K, V>> entryIterator() {
        return new a();
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
    public Set<K> keySet() {
        return (Set<K>) super.keySet();
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

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    Iterator<V> valueIterator() {
        return Maps.D(entryIterator());
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i10, int i11) {
        return new LinkedHashMultimap<>(Maps.d(i10), Maps.d(i11));
    }

    @Override
    public Set<V> createCollection() {
        return r3.g(this.valueSetCapacity);
    }

    @Override
    public Set<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override
    public boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override
    public Set<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return super.replaceValues((Object) k10, (Iterable) iterable);
    }

    @Override
    Collection<V> createCollection(K k10) {
        return new b(k10, this.valueSetCapacity);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(j3 j3Var) {
        LinkedHashMultimap<K, V> linkedHashMultimapCreate = create(j3Var.keySet().size(), 2);
        linkedHashMultimapCreate.putAll(j3Var);
        return linkedHashMultimapCreate;
    }
}
