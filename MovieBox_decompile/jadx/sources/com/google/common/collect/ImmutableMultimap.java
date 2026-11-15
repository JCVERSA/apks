package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public abstract class ImmutableMultimap<K, V> extends j implements Serializable {
    private static final long serialVersionUID = 0;
    final transient ImmutableMap<K, ? extends ImmutableCollection<V>> map;
    final transient int size;

    private static class EntryCollection<K, V> extends ImmutableCollection<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;
        final ImmutableMultimap<K, V> multimap;

        EntryCollection(ImmutableMultimap<K, V> immutableMultimap) {
            this.multimap = immutableMultimap;
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.multimap.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override
        boolean isPartialView() {
            return this.multimap.isPartialView();
        }

        @Override
        public int size() {
            return this.multimap.size();
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public r4 iterator() {
            return this.multimap.entryIterator();
        }
    }

    class Keys extends ImmutableMultiset<K> {
        Keys() {
        }

        private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("Use KeysSerializedForm");
        }

        @Override
        public boolean contains(Object obj) {
            return ImmutableMultimap.this.containsKey(obj);
        }

        @Override
        public int count(Object obj) {
            ImmutableCollection<V> immutableCollection = ImmutableMultimap.this.map.get(obj);
            if (immutableCollection == null) {
                return 0;
            }
            return immutableCollection.size();
        }

        @Override
        l3.a getEntry(int i10) {
            Map.Entry<K, ? extends ImmutableCollection<V>> entry = ImmutableMultimap.this.map.entrySet().asList().get(i10);
            return Multisets.g(entry.getKey(), entry.getValue().size());
        }

        @Override
        boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return ImmutableMultimap.this.size();
        }

        @Override
        Object writeReplace() {
            return new KeysSerializedForm(ImmutableMultimap.this);
        }

        @Override
        public ImmutableSet<K> elementSet() {
            return ImmutableMultimap.this.keySet();
        }
    }

    private static final class KeysSerializedForm implements Serializable {
        final ImmutableMultimap<?, ?> multimap;

        KeysSerializedForm(ImmutableMultimap<?, ?> immutableMultimap) {
            this.multimap = immutableMultimap;
        }

        Object readResolve() {
            return this.multimap.keys();
        }
    }

    private static final class Values<K, V> extends ImmutableCollection<V> {
        private static final long serialVersionUID = 0;

        private final transient ImmutableMultimap f29604a;

        Values(ImmutableMultimap<K, V> immutableMultimap) {
            this.f29604a = immutableMultimap;
        }

        @Override
        public boolean contains(Object obj) {
            return this.f29604a.containsValue(obj);
        }

        @Override
        int copyIntoArray(Object[] objArr, int i10) {
            r4 it = this.f29604a.map.values().iterator();
            while (it.hasNext()) {
                i10 = ((ImmutableCollection) it.next()).copyIntoArray(objArr, i10);
            }
            return i10;
        }

        @Override
        boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return this.f29604a.size();
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public r4 iterator() {
            return this.f29604a.valueIterator();
        }
    }

    class a extends r4 {

        final Iterator f29605a;

        Object f29606b = null;

        Iterator f29607c = Iterators.h();

        a() {
            this.f29605a = ImmutableMultimap.this.map.entrySet().iterator();
        }

        @Override
        public Map.Entry next() {
            if (!this.f29607c.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f29605a.next();
                this.f29606b = entry.getKey();
                this.f29607c = ((ImmutableCollection) entry.getValue()).iterator();
            }
            Object obj = this.f29606b;
            Objects.requireNonNull(obj);
            return Maps.i(obj, this.f29607c.next());
        }

        @Override
        public boolean hasNext() {
            return this.f29607c.hasNext() || this.f29605a.hasNext();
        }
    }

    class b extends r4 {

        Iterator f29609a;

        Iterator f29610b = Iterators.h();

        b() {
            this.f29609a = ImmutableMultimap.this.map.values().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f29610b.hasNext() || this.f29609a.hasNext();
        }

        @Override
        public Object next() {
            if (!this.f29610b.hasNext()) {
                this.f29610b = ((ImmutableCollection) this.f29609a.next()).iterator();
            }
            return this.f29610b.next();
        }
    }

    static class d {

        static final w3.b f29616a = w3.a(ImmutableMultimap.class, "map");

        static final w3.b f29617b = w3.a(ImmutableMultimap.class, "size");
    }

    ImmutableMultimap(ImmutableMap<K, ? extends ImmutableCollection<V>> immutableMap, int i10) {
        this.map = immutableMap;
        this.size = i10;
    }

    public static <K, V> c builder() {
        return new c();
    }

    public static <K, V> c builderWithExpectedKeys(int i10) {
        e2.b(i10, "expectedKeys");
        return new c(i10);
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(j3 j3Var) {
        if (j3Var instanceof ImmutableMultimap) {
            ImmutableMultimap<K, V> immutableMultimap = (ImmutableMultimap) j3Var;
            if (!immutableMultimap.isPartialView()) {
                return immutableMultimap;
            }
        }
        return ImmutableListMultimap.copyOf(j3Var);
    }

    public static <K, V> ImmutableMultimap<K, V> of() {
        return ImmutableListMultimap.of();
    }

    @Override
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override
    Map<K, Collection<V>> createAsMap() {
        throw new AssertionError("should never be called");
    }

    @Override
    Set<K> createKeySet() {
        throw new AssertionError("unreachable");
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public abstract ImmutableCollection<V> get(K k10);

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    public abstract ImmutableMultimap<V, K> inverse();

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    boolean isPartialView() {
        return this.map.isPartialView();
    }

    @Override
    @Deprecated
    public final boolean put(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean putAll(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public String toString() {
        return super.toString();
    }

    public static class c {

        Map f29612a;

        Comparator f29613b;

        Comparator f29614c;

        int f29615d = 4;

        public c() {
        }

        public ImmutableMultimap a() {
            Map map = this.f29612a;
            if (map == null) {
                return ImmutableListMultimap.of();
            }
            Collection collectionEntrySet = map.entrySet();
            Comparator comparator = this.f29613b;
            if (comparator != null) {
                collectionEntrySet = Ordering.from(comparator).onKeys().immutableSortedCopy(collectionEntrySet);
            }
            return ImmutableListMultimap.fromMapBuilderEntries(collectionEntrySet, this.f29614c);
        }

        c b(c cVar) {
            Map map = cVar.f29612a;
            if (map != null) {
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    i(entry.getKey(), ((ImmutableCollection.b) entry.getValue()).e());
                }
            }
            return this;
        }

        Map c() {
            Map map = this.f29612a;
            if (map != null) {
                return map;
            }
            Map mapH = r3.h();
            this.f29612a = mapH;
            return mapH;
        }

        int d(int i10, Iterable iterable) {
            return iterable instanceof Collection ? Math.max(i10, ((Collection) iterable).size()) : i10;
        }

        ImmutableCollection.b e(int i10) {
            return ImmutableList.builderWithExpectedSize(i10);
        }

        public c f(Object obj, Object obj2) {
            e2.a(obj, obj2);
            ImmutableCollection.b bVarE = (ImmutableCollection.b) c().get(obj);
            if (bVarE == null) {
                bVarE = e(this.f29615d);
                c().put(obj, bVarE);
            }
            bVarE.a(obj2);
            return this;
        }

        public c g(Map.Entry entry) {
            return f(entry.getKey(), entry.getValue());
        }

        public c h(Iterable iterable) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                g((Map.Entry) it.next());
            }
            return this;
        }

        public c i(Object obj, Iterable iterable) {
            if (obj == null) {
                throw new NullPointerException("null key in entry: null=" + g3.r(iterable));
            }
            Iterator it = iterable.iterator();
            if (!it.hasNext()) {
                return this;
            }
            ImmutableCollection.b bVarE = (ImmutableCollection.b) c().get(obj);
            if (bVarE == null) {
                bVarE = e(d(this.f29615d, iterable));
                c().put(obj, bVarE);
            }
            while (it.hasNext()) {
                Object next = it.next();
                e2.a(obj, next);
                bVarE.a(next);
            }
            return this;
        }

        c(int i10) {
            if (i10 > 0) {
                this.f29612a = r3.i(i10);
            }
        }
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v10) {
        return ImmutableListMultimap.of((Object) k10, (Object) v10);
    }

    @Override
    public ImmutableMap<K, Collection<V>> asMap() {
        return this.map;
    }

    @Override
    public ImmutableCollection<Map.Entry<K, V>> createEntries() {
        return new EntryCollection(this);
    }

    @Override
    public ImmutableMultiset<K> createKeys() {
        return new Keys();
    }

    @Override
    public ImmutableCollection<V> createValues() {
        return new Values(this);
    }

    @Override
    public ImmutableCollection<Map.Entry<K, V>> entries() {
        return (ImmutableCollection) super.entries();
    }

    @Override
    public r4 entryIterator() {
        return new a();
    }

    @Override
    public ImmutableSet<K> keySet() {
        return this.map.keySet();
    }

    @Override
    public ImmutableMultiset<K> keys() {
        return (ImmutableMultiset) super.keys();
    }

    @Override
    @Deprecated
    public final boolean putAll(j3 j3Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public ImmutableCollection<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public ImmutableCollection<V> mo283replaceValues(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override
    public r4 valueIterator() {
        return new b();
    }

    @Override
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v10, K k11, V v11) {
        return ImmutableListMultimap.of((Object) k10, (Object) v10, (Object) k11, (Object) v11);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12) {
        return ImmutableListMultimap.of((Object) k10, (Object) v10, (Object) k11, (Object) v11, (Object) k12, (Object) v12);
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return ImmutableListMultimap.copyOf((Iterable) iterable);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        return ImmutableListMultimap.of((Object) k10, (Object) v10, (Object) k11, (Object) v11, (Object) k12, (Object) v12, (Object) k13, (Object) v13);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        return ImmutableListMultimap.of((Object) k10, (Object) v10, (Object) k11, (Object) v11, (Object) k12, (Object) v12, (Object) k13, (Object) v13, (Object) k14, (Object) v14);
    }
}
