package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

public abstract class Multimaps {

    private static class CustomListMultimap<K, V> extends AbstractListMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient com.google.common.base.q factory;

        CustomListMultimap(Map<K, Collection<V>> map, com.google.common.base.q qVar) {
            super(map);
            this.factory = (com.google.common.base.q) com.google.common.base.m.o(qVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            this.factory = (com.google.common.base.q) object;
            Object object2 = objectInputStream.readObject();
            Objects.requireNonNull(object2);
            setMap((Map) object2);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override
        Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override
        Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override
        public List<V> createCollection() {
            return (List) this.factory.get();
        }
    }

    private static class CustomSetMultimap<K, V> extends AbstractSetMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient com.google.common.base.q factory;

        CustomSetMultimap(Map<K, Collection<V>> map, com.google.common.base.q qVar) {
            super(map);
            this.factory = (com.google.common.base.q) com.google.common.base.m.o(qVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            this.factory = (com.google.common.base.q) object;
            Object object2 = objectInputStream.readObject();
            Objects.requireNonNull(object2);
            setMap((Map) object2);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override
        Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override
        Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override
        <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            if (collection instanceof NavigableSet) {
                return Sets.l((NavigableSet) collection);
            }
            return collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : Collections.unmodifiableSet((Set) collection);
        }

        @Override
        Collection<V> wrapCollection(K k10, Collection<V> collection) {
            if (collection instanceof NavigableSet) {
                return new AbstractMapBasedMultimap.m(k10, (NavigableSet) collection, null);
            }
            return collection instanceof SortedSet ? new AbstractMapBasedMultimap.o(k10, (SortedSet) collection, null) : new AbstractMapBasedMultimap.n(k10, (Set) collection);
        }

        @Override
        public Set<V> createCollection() {
            return (Set) this.factory.get();
        }
    }

    static final class a extends Maps.q {

        private final j3 f29783d;

        class C0381a extends Maps.i {
            C0381a() {
            }

            public Collection c(Object obj) {
                return a.this.f29783d.get(obj);
            }

            @Override
            Map a() {
                return a.this;
            }

            @Override
            public Iterator iterator() {
                return Maps.c(a.this.f29783d.keySet(), new com.google.common.base.f() {
                    @Override
                    public final Object apply(Object obj) {
                        return this.f29995a.c(obj);
                    }
                });
            }

            @Override
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                a.this.i(entry.getKey());
                return true;
            }
        }

        a(j3 j3Var) {
            this.f29783d = (j3) com.google.common.base.m.o(j3Var);
        }

        @Override
        protected Set a() {
            return new C0381a();
        }

        @Override
        public void clear() {
            this.f29783d.clear();
        }

        @Override
        public boolean containsKey(Object obj) {
            return this.f29783d.containsKey(obj);
        }

        @Override
        public Collection get(Object obj) {
            if (containsKey(obj)) {
                return this.f29783d.get(obj);
            }
            return null;
        }

        @Override
        public Collection remove(Object obj) {
            if (containsKey(obj)) {
                return this.f29783d.removeAll(obj);
            }
            return null;
        }

        void i(Object obj) {
            this.f29783d.keySet().remove(obj);
        }

        @Override
        public boolean isEmpty() {
            return this.f29783d.isEmpty();
        }

        @Override
        public Set keySet() {
            return this.f29783d.keySet();
        }

        @Override
        public int size() {
            return this.f29783d.keySet().size();
        }
    }

    static abstract class b extends AbstractCollection {
        b() {
        }

        abstract j3 a();

        @Override
        public void clear() {
            a().clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a().containsEntry(entry.getKey(), entry.getValue());
        }

        @Override
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a().remove(entry.getKey(), entry.getValue());
        }

        @Override
        public int size() {
            return a().size();
        }
    }

    static class c extends d {

        final j3 f29785a;

        class a extends o4 {

            class C0382a extends Multisets.b {

                final Map.Entry f29787a;

                final a f29788b;

                C0382a(a aVar, Map.Entry entry) {
                    this.f29787a = entry;
                    this.f29788b = aVar;
                }

                @Override
                public int getCount() {
                    return ((Collection) this.f29787a.getValue()).size();
                }

                @Override
                public Object getElement() {
                    return this.f29787a.getKey();
                }
            }

            a(Iterator it) {
                super(it);
            }

            @Override
            public l3.a a(Map.Entry entry) {
                return new C0382a(this, entry);
            }
        }

        c(j3 j3Var) {
            this.f29785a = j3Var;
        }

        @Override
        public void clear() {
            this.f29785a.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return this.f29785a.containsKey(obj);
        }

        @Override
        public int count(Object obj) {
            Collection collection = (Collection) Maps.v(this.f29785a.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        @Override
        int distinctElements() {
            return this.f29785a.asMap().size();
        }

        @Override
        Iterator elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override
        public Set elementSet() {
            return this.f29785a.keySet();
        }

        @Override
        Iterator entryIterator() {
            return new a(this.f29785a.asMap().entrySet().iterator());
        }

        @Override
        public Iterator iterator() {
            return Maps.l(this.f29785a.entries().iterator());
        }

        @Override
        public int remove(Object obj, int i10) {
            e2.b(i10, "occurrences");
            if (i10 == 0) {
                return count(obj);
            }
            Collection collection = (Collection) Maps.v(this.f29785a.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (i10 >= size) {
                collection.clear();
            } else {
                Iterator it = collection.iterator();
                for (int i11 = 0; i11 < i10; i11++) {
                    it.next();
                    it.remove();
                }
            }
            return size;
        }

        @Override
        public int size() {
            return this.f29785a.size();
        }
    }

    static boolean a(j3 j3Var, Object obj) {
        if (obj == j3Var) {
            return true;
        }
        if (obj instanceof j3) {
            return j3Var.asMap().equals(((j3) obj).asMap());
        }
        return false;
    }

    public static i3 b(Map map, com.google.common.base.q qVar) {
        return new CustomListMultimap(map, qVar);
    }

    public static x3 c(Map map, com.google.common.base.q qVar) {
        return new CustomSetMultimap(map, qVar);
    }
}
