package com.google.common.collect;

import defpackage.at6;
import defpackage.fm5;
import defpackage.k71;
import defpackage.o74;
import defpackage.ue9;
import defpackage.w6a;
import defpackage.xd8;
import defpackage.y6b;
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

    public static class CustomListMultimap<K, V> extends AbstractListMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient w6a factory;

        public CustomListMultimap(Map<K, Collection<V>> map, w6a w6aVar) {
            super(map);
            this.factory = (w6a) xd8.o(w6aVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            this.factory = (w6a) object;
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
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override
        public List<V> createCollection() {
            return (List) this.factory.get();
        }
    }

    public static class CustomSetMultimap<K, V> extends AbstractSetMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient w6a factory;

        public CustomSetMultimap(Map<K, Collection<V>> map, w6a w6aVar) {
            super(map);
            this.factory = (w6a) xd8.o(w6aVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            this.factory = (w6a) object;
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
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override
        public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            if (collection instanceof NavigableSet) {
                return Sets.l((NavigableSet) collection);
            }
            return collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : Collections.unmodifiableSet((Set) collection);
        }

        @Override
        public Collection<V> wrapCollection(K k, Collection<V> collection) {
            if (collection instanceof NavigableSet) {
                return new AbstractMapBasedMultimap.m(k, (NavigableSet) collection, null);
            }
            return collection instanceof SortedSet ? new AbstractMapBasedMultimap.o(k, (SortedSet) collection, null) : new AbstractMapBasedMultimap.n(k, (Set) collection);
        }

        @Override
        public Set<V> createCollection() {
            return (Set) this.factory.get();
        }
    }

    public static final class a extends Maps.q {
        public final at6 e;

        public class C0098a extends Maps.i {
            public C0098a() {
            }

            @Override
            public Map b() {
                return a.this;
            }

            public final Collection f(Object obj) {
                return a.this.e.get(obj);
            }

            @Override
            public Iterator iterator() {
                return Maps.c(a.this.e.keySet(), new o74() {
                    @Override
                    public final Object apply(Object obj) {
                        return this.b.f(obj);
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
                a.this.g(entry.getKey());
                return true;
            }
        }

        public a(at6 at6Var) {
            this.e = (at6) xd8.o(at6Var);
        }

        @Override
        public Set a() {
            return new C0098a();
        }

        @Override
        public void clear() {
            this.e.clear();
        }

        @Override
        public boolean containsKey(Object obj) {
            return this.e.containsKey(obj);
        }

        @Override
        public Collection get(Object obj) {
            if (containsKey(obj)) {
                return this.e.get(obj);
            }
            return null;
        }

        @Override
        public Collection remove(Object obj) {
            if (containsKey(obj)) {
                return this.e.removeAll(obj);
            }
            return null;
        }

        public void g(Object obj) {
            this.e.keySet().remove(obj);
        }

        @Override
        public boolean isEmpty() {
            return this.e.isEmpty();
        }

        @Override
        public Set keySet() {
            return this.e.keySet();
        }

        @Override
        public int size() {
            return this.e.keySet().size();
        }
    }

    public static abstract class b extends AbstractCollection {
        public abstract at6 b();

        @Override
        public void clear() {
            b().clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return b().containsEntry(entry.getKey(), entry.getValue());
        }

        @Override
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return b().remove(entry.getKey(), entry.getValue());
        }

        @Override
        public int size() {
            return b().size();
        }
    }

    public static class c extends com.google.common.collect.b {
        public final at6 b;

        public class a extends y6b {

            public class C0099a extends Multisets.b {
                public final Map.Entry b;
                public final a c;

                public C0099a(a aVar, Map.Entry entry) {
                    this.b = entry;
                    this.c = aVar;
                }

                @Override
                public int getCount() {
                    return ((Collection) this.b.getValue()).size();
                }

                @Override
                public Object getElement() {
                    return this.b.getKey();
                }
            }

            public a(Iterator it) {
                super(it);
            }

            @Override
            public j.a a(Map.Entry entry) {
                return new C0099a(this, entry);
            }
        }

        public c(at6 at6Var) {
            this.b = at6Var;
        }

        @Override
        public void clear() {
            this.b.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return this.b.containsKey(obj);
        }

        @Override
        public int count(Object obj) {
            Collection collection = (Collection) Maps.v(this.b.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        @Override
        public int distinctElements() {
            return this.b.asMap().size();
        }

        @Override
        public Iterator elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override
        public Set elementSet() {
            return this.b.keySet();
        }

        @Override
        public Iterator entryIterator() {
            return new a(this.b.asMap().entrySet().iterator());
        }

        @Override
        public Iterator iterator() {
            return Maps.l(this.b.entries().iterator());
        }

        @Override
        public int remove(Object obj, int i) {
            k71.b(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            Collection collection = (Collection) Maps.v(this.b.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (i >= size) {
                collection.clear();
            } else {
                Iterator it = collection.iterator();
                for (int i2 = 0; i2 < i; i2++) {
                    it.next();
                    it.remove();
                }
            }
            return size;
        }

        @Override
        public int size() {
            return this.b.size();
        }
    }

    public static boolean a(at6 at6Var, Object obj) {
        if (obj == at6Var) {
            return true;
        }
        if (obj instanceof at6) {
            return at6Var.asMap().equals(((at6) obj).asMap());
        }
        return false;
    }

    public static fm5 b(Map map, w6a w6aVar) {
        return new CustomListMultimap(map, w6aVar);
    }

    public static ue9 c(Map map, w6a w6aVar) {
        return new CustomSetMultimap(map, w6aVar);
    }
}
