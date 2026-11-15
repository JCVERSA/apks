package com.google.common.collect;

import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.at6;
import defpackage.dgb;
import defpackage.k71;
import defpackage.na0;
import defpackage.v55;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public abstract class ImmutableMultimap<K, V> extends na0 implements Serializable {
    private static final long serialVersionUID = 0;
    final transient ImmutableMap<K, ? extends ImmutableCollection<V>> map;
    final transient int size;

    public static class EntryCollection<K, V> extends ImmutableCollection<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;
        final ImmutableMultimap<K, V> multimap;

        public EntryCollection(ImmutableMultimap<K, V> immutableMultimap) {
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
        public boolean isPartialView() {
            return this.multimap.isPartialView();
        }

        @Override
        public int size() {
            return this.multimap.size();
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public dgb iterator() {
            return this.multimap.entryIterator();
        }
    }

    public class Keys extends ImmutableMultiset<K> {
        public Keys() {
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
        public j.a getEntry(int i) {
            Map.Entry<K, ? extends ImmutableCollection<V>> entry = ImmutableMultimap.this.map.entrySet().asList().get(i);
            return Multisets.g(entry.getKey(), entry.getValue().size());
        }

        @Override
        public boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return ImmutableMultimap.this.size();
        }

        @Override
        public Object writeReplace() {
            return new KeysSerializedForm(ImmutableMultimap.this);
        }

        @Override
        public ImmutableSet<K> elementSet() {
            return ImmutableMultimap.this.keySet();
        }
    }

    public static final class KeysSerializedForm implements Serializable {
        final ImmutableMultimap<?, ?> multimap;

        public KeysSerializedForm(ImmutableMultimap<?, ?> immutableMultimap) {
            this.multimap = immutableMultimap;
        }

        public Object readResolve() {
            return this.multimap.keys();
        }
    }

    public static final class Values<K, V> extends ImmutableCollection<V> {
        private static final long serialVersionUID = 0;
        public final transient ImmutableMultimap b;

        public Values(ImmutableMultimap<K, V> immutableMultimap) {
            this.b = immutableMultimap;
        }

        @Override
        public boolean contains(Object obj) {
            return this.b.containsValue(obj);
        }

        @Override
        public int copyIntoArray(Object[] objArr, int i) {
            dgb it = this.b.map.values().iterator();
            while (it.hasNext()) {
                i = ((ImmutableCollection) it.next()).copyIntoArray(objArr, i);
            }
            return i;
        }

        @Override
        public boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return this.b.size();
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public dgb iterator() {
            return this.b.valueIterator();
        }
    }

    public class a extends dgb {
        public final Iterator b;
        public Object c = null;
        public Iterator d = Iterators.h();

        public a() {
            this.b = ImmutableMultimap.this.map.entrySet().iterator();
        }

        @Override
        public Map.Entry next() {
            if (!this.d.hasNext()) {
                Map.Entry entry = (Map.Entry) this.b.next();
                this.c = entry.getKey();
                this.d = ((ImmutableCollection) entry.getValue()).iterator();
            }
            Object obj = this.c;
            Objects.requireNonNull(obj);
            return Maps.i(obj, this.d.next());
        }

        @Override
        public boolean hasNext() {
            return this.d.hasNext() || this.b.hasNext();
        }
    }

    public class b extends dgb {
        public Iterator b;
        public Iterator c = Iterators.h();

        public b() {
            this.b = ImmutableMultimap.this.map.values().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.c.hasNext() || this.b.hasNext();
        }

        @Override
        public Object next() {
            if (!this.c.hasNext()) {
                this.c = ((ImmutableCollection) this.b.next()).iterator();
            }
            return this.c.next();
        }
    }

    public static class d {
        public static final n.b a = n.a(ImmutableMultimap.class, "map");
        public static final n.b b = n.a(ImmutableMultimap.class, PlayAudioData.TAG_SIZE);
    }

    public ImmutableMultimap(ImmutableMap<K, ? extends ImmutableCollection<V>> immutableMap, int i) {
        this.map = immutableMap;
        this.size = i;
    }

    public static <K, V> c builder() {
        return new c();
    }

    public static <K, V> c builderWithExpectedKeys(int i) {
        k71.b(i, "expectedKeys");
        return new c(i);
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(at6 at6Var) {
        if (at6Var instanceof ImmutableMultimap) {
            ImmutableMultimap<K, V> immutableMultimap = (ImmutableMultimap) at6Var;
            if (!immutableMultimap.isPartialView()) {
                return immutableMultimap;
            }
        }
        return ImmutableListMultimap.copyOf(at6Var);
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
    public Map<K, Collection<V>> createAsMap() {
        throw new AssertionError("should never be called");
    }

    @Override
    public Set<K> createKeySet() {
        throw new AssertionError("unreachable");
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public abstract ImmutableCollection<V> get(K k);

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    public abstract ImmutableMultimap<V, K> inverse();

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    public boolean isPartialView() {
        return this.map.isPartialView();
    }

    @Override
    @Deprecated
    public final boolean put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean putAll(K k, Iterable<? extends V> iterable) {
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
        public Map a;
        public Comparator b;
        public Comparator c;
        public int d = 4;

        public c() {
        }

        public ImmutableMultimap a() {
            Map map = this.a;
            if (map == null) {
                return ImmutableListMultimap.of();
            }
            Collection collectionEntrySet = map.entrySet();
            Comparator comparator = this.b;
            if (comparator != null) {
                collectionEntrySet = Ordering.from(comparator).onKeys().immutableSortedCopy(collectionEntrySet);
            }
            return ImmutableListMultimap.fromMapBuilderEntries(collectionEntrySet, this.c);
        }

        public c b(c cVar) {
            Map map = cVar.a;
            if (map != null) {
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    j(entry.getKey(), ((ImmutableCollection.b) entry.getValue()).e());
                }
            }
            return this;
        }

        public Map c() {
            Map map = this.a;
            if (map != null) {
                return map;
            }
            Map mapH = l.h();
            this.a = mapH;
            return mapH;
        }

        public int d(int i, Iterable iterable) {
            return iterable instanceof Collection ? Math.max(i, ((Collection) iterable).size()) : i;
        }

        public ImmutableCollection.b e(int i) {
            return ImmutableList.builderWithExpectedSize(i);
        }

        public c f(Object obj, Object obj2) {
            k71.a(obj, obj2);
            ImmutableCollection.b bVarE = (ImmutableCollection.b) c().get(obj);
            if (bVarE == null) {
                bVarE = e(this.d);
                c().put(obj, bVarE);
            }
            bVarE.a(obj2);
            return this;
        }

        public c g(Map.Entry entry) {
            return f(entry.getKey(), entry.getValue());
        }

        public c h(at6 at6Var) {
            for (Map.Entry<K, V> entry : at6Var.asMap().entrySet()) {
                j(entry.getKey(), (Iterable) entry.getValue());
            }
            return this;
        }

        public c i(Iterable iterable) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                g((Map.Entry) it.next());
            }
            return this;
        }

        public c j(Object obj, Iterable iterable) {
            if (obj == null) {
                throw new NullPointerException("null key in entry: null=" + v55.s(iterable));
            }
            Iterator it = iterable.iterator();
            if (!it.hasNext()) {
                return this;
            }
            ImmutableCollection.b bVarE = (ImmutableCollection.b) c().get(obj);
            if (bVarE == null) {
                bVarE = e(d(this.d, iterable));
                c().put(obj, bVarE);
            }
            while (it.hasNext()) {
                Object next = it.next();
                k71.a(obj, next);
                bVarE.a(next);
            }
            return this;
        }

        public c(int i) {
            if (i > 0) {
                this.a = l.i(i);
            }
        }
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v) {
        return ImmutableListMultimap.of((Object) k, (Object) v);
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
    public dgb entryIterator() {
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
    public final boolean putAll(at6 at6Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public ImmutableCollection<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public ImmutableCollection<V> mo77replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override
    public dgb valueIterator() {
        return new b();
    }

    @Override
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3);
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return ImmutableListMultimap.copyOf((Iterable) iterable);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4, (Object) k5, (Object) v5);
    }
}
