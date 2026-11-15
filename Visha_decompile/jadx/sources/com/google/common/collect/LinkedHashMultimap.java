package com.google.common.collect;

import defpackage.at6;
import defpackage.k71;
import defpackage.kc7;
import defpackage.mo4;
import defpackage.xd8;
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

    public static final class ValueEntry<K, V> extends ImmutableEntry<K, V> implements c {
        ValueEntry<K, V> nextInValueBucket;
        private ValueEntry<K, V> predecessorInMultimap;
        private c predecessorInValueSet;
        final int smearedValueHash;
        private ValueEntry<K, V> successorInMultimap;
        private c successorInValueSet;

        public ValueEntry(K k, V v, int i, ValueEntry<K, V> valueEntry) {
            super(k, v);
            this.smearedValueHash = i;
            this.nextInValueBucket = valueEntry;
        }

        public static <K, V> ValueEntry<K, V> newHeader() {
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

        public boolean matchesValue(Object obj, int i) {
            return this.smearedValueHash == i && kc7.a(getValue(), obj);
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

    public class a implements Iterator {
        public ValueEntry b;
        public ValueEntry c;

        public a() {
            this.b = LinkedHashMultimap.this.multimapHeaderEntry.getSuccessorInMultimap();
        }

        @Override
        public Map.Entry next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            ValueEntry valueEntry = this.b;
            this.c = valueEntry;
            this.b = valueEntry.getSuccessorInMultimap();
            return valueEntry;
        }

        @Override
        public boolean hasNext() {
            return this.b != LinkedHashMultimap.this.multimapHeaderEntry;
        }

        @Override
        public void remove() {
            xd8.v(this.c != null, "no calls to next() since the last call to remove()");
            LinkedHashMultimap.this.remove(this.c.getKey(), this.c.getValue());
            this.c = null;
        }
    }

    public final class b extends Sets.d implements c {
        public final Object b;
        public ValueEntry[] c;
        public int d = 0;
        public int e = 0;
        public c f = this;
        public c g = this;

        public class a implements Iterator {
            public c b;
            public ValueEntry c;
            public int d;

            public a() {
                this.b = b.this.f;
                this.d = b.this.e;
            }

            public final void a() {
                if (b.this.e != this.d) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public boolean hasNext() {
                a();
                return this.b != b.this;
            }

            @Override
            public Object next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                ValueEntry valueEntry = (ValueEntry) this.b;
                V value = valueEntry.getValue();
                this.c = valueEntry;
                this.b = valueEntry.getSuccessorInValueSet();
                return value;
            }

            @Override
            public void remove() {
                a();
                xd8.v(this.c != null, "no calls to next() since the last call to remove()");
                b.this.remove(this.c.getValue());
                this.d = b.this.e;
                this.c = null;
            }
        }

        public b(Object obj, int i) {
            this.b = obj;
            this.c = new ValueEntry[mo4.a(i, 1.0d)];
        }

        @Override
        public boolean add(Object obj) {
            int iD = mo4.d(obj);
            int iF = f() & iD;
            ValueEntry<K, V> valueEntry = this.c[iF];
            for (ValueEntry<K, V> valueEntry2 = valueEntry; valueEntry2 != null; valueEntry2 = valueEntry2.nextInValueBucket) {
                if (valueEntry2.matchesValue(obj, iD)) {
                    return false;
                }
            }
            ValueEntry valueEntry3 = new ValueEntry(this.b, obj, iD, valueEntry);
            LinkedHashMultimap.succeedsInValueSet(this.g, valueEntry3);
            LinkedHashMultimap.succeedsInValueSet(valueEntry3, this);
            LinkedHashMultimap.succeedsInMultimap(LinkedHashMultimap.this.multimapHeaderEntry.getPredecessorInMultimap(), valueEntry3);
            LinkedHashMultimap.succeedsInMultimap(valueEntry3, LinkedHashMultimap.this.multimapHeaderEntry);
            this.c[iF] = valueEntry3;
            this.d++;
            this.e++;
            i();
            return true;
        }

        @Override
        public void clear() {
            Arrays.fill(this.c, (Object) null);
            this.d = 0;
            for (c successorInValueSet = this.f; successorInValueSet != this; successorInValueSet = successorInValueSet.getSuccessorInValueSet()) {
                LinkedHashMultimap.deleteFromMultimap((ValueEntry) successorInValueSet);
            }
            LinkedHashMultimap.succeedsInValueSet(this, this);
            this.e++;
        }

        @Override
        public boolean contains(Object obj) {
            int iD = mo4.d(obj);
            for (ValueEntry<K, V> valueEntry = this.c[f() & iD]; valueEntry != null; valueEntry = valueEntry.nextInValueBucket) {
                if (valueEntry.matchesValue(obj, iD)) {
                    return true;
                }
            }
            return false;
        }

        public final int f() {
            return this.c.length - 1;
        }

        @Override
        public c getPredecessorInValueSet() {
            return this.g;
        }

        @Override
        public c getSuccessorInValueSet() {
            return this.f;
        }

        public final void i() {
            if (mo4.b(this.d, this.c.length, 1.0d)) {
                int length = this.c.length * 2;
                ValueEntry<K, V>[] valueEntryArr = new ValueEntry[length];
                this.c = valueEntryArr;
                int i = length - 1;
                for (c successorInValueSet = this.f; successorInValueSet != this; successorInValueSet = successorInValueSet.getSuccessorInValueSet()) {
                    ValueEntry<K, V> valueEntry = (ValueEntry) successorInValueSet;
                    int i2 = valueEntry.smearedValueHash & i;
                    valueEntry.nextInValueBucket = valueEntryArr[i2];
                    valueEntryArr[i2] = valueEntry;
                }
            }
        }

        @Override
        public Iterator iterator() {
            return new a();
        }

        @Override
        public boolean remove(Object obj) {
            int iD = mo4.d(obj);
            int iF = f() & iD;
            ValueEntry<K, V> valueEntry = null;
            for (ValueEntry<K, V> valueEntry2 = this.c[iF]; valueEntry2 != null; valueEntry2 = valueEntry2.nextInValueBucket) {
                if (valueEntry2.matchesValue(obj, iD)) {
                    if (valueEntry == null) {
                        this.c[iF] = valueEntry2.nextInValueBucket;
                    } else {
                        valueEntry.nextInValueBucket = valueEntry2.nextInValueBucket;
                    }
                    LinkedHashMultimap.deleteFromValueSet(valueEntry2);
                    LinkedHashMultimap.deleteFromMultimap(valueEntry2);
                    this.d--;
                    this.e++;
                    return true;
                }
                valueEntry = valueEntry2;
            }
            return false;
        }

        @Override
        public void setPredecessorInValueSet(c cVar) {
            this.g = cVar;
        }

        @Override
        public void setSuccessorInValueSet(c cVar) {
            this.f = cVar;
        }

        @Override
        public int size() {
            return this.d;
        }
    }

    public interface c {
        c getPredecessorInValueSet();

        c getSuccessorInValueSet();

        void setPredecessorInValueSet(c cVar);

        void setSuccessorInValueSet(c cVar);
    }

    private LinkedHashMultimap(int i, int i2) {
        super(l.f(i));
        this.valueSetCapacity = 2;
        k71.b(i2, "expectedValuesPerKey");
        this.valueSetCapacity = i2;
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
        int i = objectInputStream.readInt();
        Map mapF = l.f(12);
        for (int i2 = 0; i2 < i; i2++) {
            Object object = objectInputStream.readObject();
            mapF.put(object, createCollection(object));
        }
        int i3 = objectInputStream.readInt();
        for (int i4 = 0; i4 < i3; i4++) {
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
    public Iterator<Map.Entry<K, V>> entryIterator() {
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
    public j keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override
    public boolean putAll(at6 at6Var) {
        return super.putAll(at6Var);
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
    public Iterator<V> valueIterator() {
        return Maps.D(entryIterator());
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i, int i2) {
        return new LinkedHashMultimap<>(Maps.d(i), Maps.d(i2));
    }

    @Override
    public Set<V> createCollection() {
        return l.g(this.valueSetCapacity);
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
    public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return super.replaceValues((Object) k, (Iterable) iterable);
    }

    @Override
    public Collection<V> createCollection(K k) {
        return new b(k, this.valueSetCapacity);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(at6 at6Var) {
        LinkedHashMultimap<K, V> linkedHashMultimapCreate = create(at6Var.keySet().size(), 2);
        linkedHashMultimapCreate.putAll(at6Var);
        return linkedHashMultimapCreate;
    }
}
