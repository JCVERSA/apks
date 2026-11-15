package com.yandex.mobile.ads.impl;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

abstract class o<K, V> extends q<K, V> implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;
    private transient Map<K, Collection<V>> e;
    private transient int f;

    public class a extends hu0<K, Collection<V>> {
        final transient Map<K, Collection<V>> d;

        public class C0325a extends eu0<K, Collection<V>> {
            public C0325a() {
            }

            @Override
            public final boolean contains(Object obj) {
                Set<Map.Entry<K, Collection<V>>> setEntrySet = a.this.d.entrySet();
                setEntrySet.getClass();
                try {
                    return setEntrySet.contains(obj);
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }

            @Override
            public final Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return a.this.new b();
            }

            @Override
            public final boolean remove(Object obj) {
                Object objRemove;
                Set<Map.Entry<K, Collection<V>>> setEntrySet = a.this.d.entrySet();
                setEntrySet.getClass();
                try {
                    if (!setEntrySet.contains(obj)) {
                        return false;
                    }
                    Map.Entry entry = (Map.Entry) obj;
                    Objects.requireNonNull(entry);
                    o oVar = o.this;
                    Object key = entry.getKey();
                    Map map = oVar.e;
                    map.getClass();
                    try {
                        objRemove = map.remove(key);
                    } catch (ClassCastException | NullPointerException unused) {
                        objRemove = null;
                    }
                    Collection collection = (Collection) objRemove;
                    if (collection == null) {
                        return true;
                    }
                    int size = collection.size();
                    collection.clear();
                    oVar.f -= size;
                    return true;
                } catch (ClassCastException | NullPointerException unused2) {
                    return false;
                }
            }
        }

        public class b implements Iterator<Map.Entry<K, Collection<V>>> {
            final Iterator<Map.Entry<K, Collection<V>>> b;
            Collection<V> c;

            public b() {
                this.b = a.this.d.entrySet().iterator();
            }

            @Override
            public final boolean hasNext() {
                return this.b.hasNext();
            }

            @Override
            public final Object next() {
                Map.Entry<K, Collection<V>> next = this.b.next();
                this.c = next.getValue();
                return a.this.a(next);
            }

            @Override
            public final void remove() {
                if (!(this.c != null)) {
                    throw new IllegalStateException("no calls to next() since the last call to remove()");
                }
                this.b.remove();
                o.this.f -= this.c.size();
                this.c.clear();
                this.c = null;
            }
        }

        public a(Map<K, Collection<V>> map) {
            this.d = map;
        }

        public final Map.Entry<K, Collection<V>> a(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            o oVar = o.this;
            Collection<V> value = entry.getValue();
            m mVar = (m) oVar;
            mVar.getClass();
            List list = (List) value;
            return new jk0(key, list instanceof RandomAccess ? new f(mVar, key, list, null) : new j(key, list, null));
        }

        @Override
        public final void clear() {
            Map<K, Collection<V>> map = this.d;
            o oVar = o.this;
            if (map == oVar.e) {
                oVar.d();
                return;
            }
            b bVar = new b();
            while (bVar.hasNext()) {
                bVar.next();
                bVar.remove();
            }
        }

        @Override
        public final boolean containsKey(Object obj) {
            Map<K, Collection<V>> map = this.d;
            map.getClass();
            try {
                return map.containsKey(obj);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override
        public final boolean equals(Object obj) {
            return this == obj || this.d.equals(obj);
        }

        @Override
        public final Object get(Object obj) {
            Collection<V> collection;
            Map<K, Collection<V>> map = this.d;
            map.getClass();
            try {
                collection = map.get(obj);
            } catch (ClassCastException | NullPointerException unused) {
                collection = null;
            }
            Collection<V> collection2 = collection;
            if (collection2 == null) {
                return null;
            }
            m mVar = (m) o.this;
            mVar.getClass();
            List list = (List) collection2;
            return list instanceof RandomAccess ? new f(mVar, obj, list, null) : new j(obj, list, null);
        }

        @Override
        public final int hashCode() {
            return this.d.hashCode();
        }

        @Override
        public Set<K> keySet() {
            return o.this.b();
        }

        @Override
        public final Object remove(Object obj) {
            Collection<V> collectionRemove = this.d.remove(obj);
            if (collectionRemove == null) {
                return null;
            }
            List<V> list = ((x31) o.this).g.get();
            list.addAll(collectionRemove);
            o.this.f -= collectionRemove.size();
            collectionRemove.clear();
            return list;
        }

        @Override
        public final int size() {
            return this.d.size();
        }

        @Override
        public final String toString() {
            return this.d.toString();
        }
    }

    public abstract class b<T> implements Iterator<T> {
        final Iterator<Map.Entry<K, Collection<V>>> b;
        K c = null;
        Collection<V> d = null;
        Iterator<V> e = mq0.INSTANCE;

        public b() {
            this.b = o.this.e.entrySet().iterator();
        }

        public abstract T a(K k, V v);

        @Override
        public final boolean hasNext() {
            return this.b.hasNext() || this.e.hasNext();
        }

        @Override
        public final T next() {
            if (!this.e.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.b.next();
                this.c = next.getKey();
                Collection<V> value = next.getValue();
                this.d = value;
                this.e = value.iterator();
            }
            return a(this.c, this.e.next());
        }

        @Override
        public final void remove() {
            this.e.remove();
            Collection<V> collection = this.d;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.b.remove();
            }
            o.this.f--;
        }
    }

    public class c extends fu0<K, Collection<V>> {

        public class a implements Iterator<K> {
            Map.Entry<K, Collection<V>> b;
            final Iterator c;

            public a(Iterator it) {
                this.c = it;
            }

            @Override
            public final boolean hasNext() {
                return this.c.hasNext();
            }

            @Override
            public final K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.c.next();
                this.b = entry;
                return entry.getKey();
            }

            @Override
            public final void remove() {
                Map.Entry<K, Collection<V>> entry = this.b;
                if (!(entry != null)) {
                    throw new IllegalStateException("no calls to next() since the last call to remove()");
                }
                Collection<V> value = entry.getValue();
                this.c.remove();
                o.this.f -= value.size();
                value.clear();
                this.b = null;
            }
        }

        public c(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override
        public final void clear() {
            Iterator<K> it = iterator();
            while (true) {
                a aVar = (a) it;
                if (!aVar.hasNext()) {
                    return;
                }
                aVar.next();
                aVar.remove();
            }
        }

        @Override
        public final boolean containsAll(Collection<?> collection) {
            return this.b.keySet().containsAll(collection);
        }

        @Override
        public final boolean equals(Object obj) {
            return this == obj || this.b.keySet().equals(obj);
        }

        @Override
        public final int hashCode() {
            return this.b.keySet().hashCode();
        }

        @Override
        public final Iterator<K> iterator() {
            return new a(this.b.entrySet().iterator());
        }

        @Override
        public final boolean remove(Object obj) {
            Collection collection = (Collection) this.b.remove(obj);
            if (collection != null) {
                int size = collection.size();
                collection.clear();
                o.this.f -= size;
                if (size > 0) {
                    return true;
                }
            }
            return false;
        }
    }

    public class d extends o<K, V>.g implements NavigableMap<K, Collection<V>> {
        public d(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override
        public final SortedSet a() {
            return new e(b());
        }

        @Override
        public final NavigableMap<K, Collection<V>> b() {
            return (NavigableMap) ((SortedMap) this.d);
        }

        @Override
        public final Map.Entry<K, Collection<V>> ceilingEntry(K k) {
            Map.Entry<K, Collection<V>> entryCeilingEntry = b().ceilingEntry(k);
            if (entryCeilingEntry == null) {
                return null;
            }
            return a(entryCeilingEntry);
        }

        @Override
        public final K ceilingKey(K k) {
            return b().ceilingKey(k);
        }

        @Override
        public final NavigableSet<K> descendingKeySet() {
            return ((d) descendingMap()).navigableKeySet();
        }

        @Override
        public final NavigableMap<K, Collection<V>> descendingMap() {
            return new d(b().descendingMap());
        }

        @Override
        public final Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> entryFirstEntry = b().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return a(entryFirstEntry);
        }

        @Override
        public final Map.Entry<K, Collection<V>> floorEntry(K k) {
            Map.Entry<K, Collection<V>> entryFloorEntry = b().floorEntry(k);
            if (entryFloorEntry == null) {
                return null;
            }
            return a(entryFloorEntry);
        }

        @Override
        public final K floorKey(K k) {
            return b().floorKey(k);
        }

        @Override
        public final SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override
        public final Map.Entry<K, Collection<V>> higherEntry(K k) {
            Map.Entry<K, Collection<V>> entryHigherEntry = b().higherEntry(k);
            if (entryHigherEntry == null) {
                return null;
            }
            return a(entryHigherEntry);
        }

        @Override
        public final K higherKey(K k) {
            return b().higherKey(k);
        }

        @Override
        public final Set keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override
        public final Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> entryLastEntry = b().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return a(entryLastEntry);
        }

        @Override
        public final Map.Entry<K, Collection<V>> lowerEntry(K k) {
            Map.Entry<K, Collection<V>> entryLowerEntry = b().lowerEntry(k);
            if (entryLowerEntry == null) {
                return null;
            }
            return a(entryLowerEntry);
        }

        @Override
        public final K lowerKey(K k) {
            return b().lowerKey(k);
        }

        @Override
        public final NavigableSet<K> navigableKeySet() {
            return (NavigableSet) super.keySet();
        }

        @Override
        public final Map.Entry<K, Collection<V>> pollFirstEntry() {
            Iterator<Map.Entry<K, Collection<V>>> it = entrySet().iterator();
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it.next();
            List<V> list = ((x31) o.this).g.get();
            list.addAll(next.getValue());
            it.remove();
            K key = next.getKey();
            ((m) o.this).getClass();
            return new jk0(key, Collections.unmodifiableList(list));
        }

        @Override
        public final Map.Entry<K, Collection<V>> pollLastEntry() {
            Iterator<Map.Entry<K, V>> it = ((hu0) descendingMap()).entrySet().iterator();
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry<K, V> next = it.next();
            List<V> list = ((x31) o.this).g.get();
            list.addAll((Collection) next.getValue());
            it.remove();
            K key = next.getKey();
            ((m) o.this).getClass();
            return new jk0(key, Collections.unmodifiableList(list));
        }

        @Override
        public final SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override
        public final SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }

        @Override
        public final NavigableMap<K, Collection<V>> headMap(K k, boolean z) {
            return new d(b().headMap(k, z));
        }

        @Override
        public final SortedSet keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override
        public final NavigableMap<K, Collection<V>> subMap(K k, boolean z, K k2, boolean z2) {
            return new d(b().subMap(k, z, k2, z2));
        }

        @Override
        public final NavigableMap<K, Collection<V>> tailMap(K k, boolean z) {
            return new d(b().tailMap(k, z));
        }
    }

    public class e extends o<K, V>.h implements NavigableSet<K> {
        public e(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override
        public final NavigableMap<K, Collection<V>> b() {
            return (NavigableMap) ((SortedMap) this.b);
        }

        @Override
        public final K ceiling(K k) {
            return b().ceilingKey(k);
        }

        @Override
        public final Iterator<K> descendingIterator() {
            return ((c) descendingSet()).iterator();
        }

        @Override
        public final NavigableSet<K> descendingSet() {
            return new e(b().descendingMap());
        }

        @Override
        public final K floor(K k) {
            return b().floorKey(k);
        }

        @Override
        public final SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override
        public final K higher(K k) {
            return b().higherKey(k);
        }

        @Override
        public final K lower(K k) {
            return b().lowerKey(k);
        }

        @Override
        public final K pollFirst() {
            c.a aVar = (c.a) iterator();
            if (!aVar.hasNext()) {
                return null;
            }
            K k = (K) aVar.next();
            aVar.remove();
            return k;
        }

        @Override
        public final K pollLast() {
            c.a aVar = (c.a) ((c) descendingSet()).iterator();
            if (!aVar.hasNext()) {
                return null;
            }
            K k = (K) aVar.next();
            aVar.remove();
            return k;
        }

        @Override
        public final SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override
        public final SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }

        @Override
        public final NavigableSet<K> headSet(K k, boolean z) {
            return new e(b().headMap(k, z));
        }

        @Override
        public final NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return new e(b().subMap(k, z, k2, z2));
        }

        @Override
        public final NavigableSet<K> tailSet(K k, boolean z) {
            return new e(b().tailMap(k, z));
        }
    }

    public class f extends o<K, V>.j implements RandomAccess {
        public f(o oVar, K k, List<V> list, o<K, V>.i iVar) {
            super(k, list, iVar);
        }
    }

    public class g extends o<K, V>.a implements SortedMap<K, Collection<V>> {
        SortedSet<K> f;

        public g(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        public SortedSet<K> a() {
            return new h(b());
        }

        public SortedMap<K, Collection<V>> b() {
            return (SortedMap) this.d;
        }

        @Override
        public final Comparator<? super K> comparator() {
            return b().comparator();
        }

        @Override
        public final K firstKey() {
            return b().firstKey();
        }

        public SortedMap<K, Collection<V>> headMap(K k) {
            return new g(b().headMap(k));
        }

        @Override
        public final K lastKey() {
            return b().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k, K k2) {
            return new g(b().subMap(k, k2));
        }

        public SortedMap<K, Collection<V>> tailMap(K k) {
            return new g(b().tailMap(k));
        }

        @Override
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> sortedSetA = a();
            this.f = sortedSetA;
            return sortedSetA;
        }
    }

    public class h extends o<K, V>.c implements SortedSet<K> {
        public h(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        public SortedMap<K, Collection<V>> b() {
            return (SortedMap) this.b;
        }

        @Override
        public final Comparator<? super K> comparator() {
            return b().comparator();
        }

        @Override
        public final K first() {
            return b().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new h(b().headMap(k));
        }

        @Override
        public final K last() {
            return b().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new h(b().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new h(b().tailMap(k));
        }
    }

    public o(Map<K, Collection<V>> map) {
        vj1.a(map.isEmpty());
        this.e = map;
    }

    public static <E> Iterator<E> a(Collection<E> collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public final int g() {
        return this.f;
    }

    @Override
    public boolean put(K k, V v) {
        Collection<V> collection = this.e.get(k);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.f++;
            return true;
        }
        List<V> list = ((x31) this).g.get();
        if (!list.add(v)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f++;
        this.e.put(k, list);
        return true;
    }

    @Override
    public final Collection<V> values() {
        return super.values();
    }

    public class i extends AbstractCollection<V> {
        final K b;
        Collection<V> c;
        final o<K, V>.i d;
        final Collection<V> e;

        public i(K k, Collection<V> collection, o<K, V>.i iVar) {
            this.b = k;
            this.c = collection;
            this.d = iVar;
            this.e = iVar == null ? null : iVar.c();
        }

        @Override
        public final boolean add(V v) {
            d();
            boolean zIsEmpty = this.c.isEmpty();
            boolean zAdd = this.c.add(v);
            if (zAdd) {
                o.this.f++;
                if (zIsEmpty) {
                    b();
                }
            }
            return zAdd;
        }

        @Override
        public final boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            d();
            int size = this.c.size();
            boolean zAddAll = this.c.addAll(collection);
            if (zAddAll) {
                int size2 = this.c.size();
                o oVar = o.this;
                oVar.f = (size2 - size) + oVar.f;
                if (size == 0) {
                    b();
                }
            }
            return zAddAll;
        }

        public final void b() {
            o<K, V>.i iVar = this.d;
            if (iVar != null) {
                iVar.b();
            } else {
                o.this.e.put(this.b, this.c);
            }
        }

        public final Collection<V> c() {
            return this.c;
        }

        @Override
        public final void clear() {
            d();
            int size = this.c.size();
            if (size == 0) {
                return;
            }
            this.c.clear();
            o.this.f -= size;
            e();
        }

        @Override
        public final boolean contains(Object obj) {
            d();
            return this.c.contains(obj);
        }

        @Override
        public final boolean containsAll(Collection<?> collection) {
            d();
            return this.c.containsAll(collection);
        }

        public final void d() {
            Collection<V> collection;
            o<K, V>.i iVar = this.d;
            if (iVar != null) {
                iVar.d();
                if (this.d.c != this.e) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.c.isEmpty() || (collection = (Collection) o.this.e.get(this.b)) == null) {
                    return;
                }
                this.c = collection;
            }
        }

        public final void e() {
            o<K, V>.i iVar = this.d;
            if (iVar != null) {
                iVar.e();
            } else if (this.c.isEmpty()) {
                o.this.e.remove(this.b);
            }
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            d();
            return this.c.equals(obj);
        }

        @Override
        public final int hashCode() {
            d();
            return this.c.hashCode();
        }

        @Override
        public final Iterator<V> iterator() {
            d();
            return new a();
        }

        @Override
        public final boolean remove(Object obj) {
            d();
            boolean zRemove = this.c.remove(obj);
            if (zRemove) {
                o.this.f--;
                e();
            }
            return zRemove;
        }

        @Override
        public final boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            d();
            int size = this.c.size();
            boolean zRemoveAll = this.c.removeAll(collection);
            if (zRemoveAll) {
                int size2 = this.c.size();
                o oVar = o.this;
                oVar.f = (size2 - size) + oVar.f;
                e();
            }
            return zRemoveAll;
        }

        @Override
        public final boolean retainAll(Collection<?> collection) {
            collection.getClass();
            d();
            int size = this.c.size();
            boolean zRetainAll = this.c.retainAll(collection);
            if (zRetainAll) {
                int size2 = this.c.size();
                o oVar = o.this;
                oVar.f = (size2 - size) + oVar.f;
                e();
            }
            return zRetainAll;
        }

        @Override
        public final int size() {
            d();
            return this.c.size();
        }

        @Override
        public final String toString() {
            d();
            return this.c.toString();
        }

        public class a implements Iterator<V> {
            final Iterator<V> b;
            final Collection<V> c;

            public a() {
                Collection<V> collection = i.this.c;
                this.c = collection;
                this.b = o.a(collection);
            }

            @Override
            public final boolean hasNext() {
                i.this.d();
                if (i.this.c == this.c) {
                    return this.b.hasNext();
                }
                throw new ConcurrentModificationException();
            }

            @Override
            public final V next() {
                i.this.d();
                if (i.this.c == this.c) {
                    return this.b.next();
                }
                throw new ConcurrentModificationException();
            }

            @Override
            public final void remove() {
                this.b.remove();
                i iVar = i.this;
                o.this.f--;
                iVar.e();
            }

            public a(ListIterator listIterator) {
                this.c = i.this.c;
                this.b = listIterator;
            }
        }
    }

    public class j extends o<K, V>.i implements List<V> {

        public class a extends o<K, V>.i.a implements ListIterator<V> {
            public a() {
                super();
            }

            private ListIterator<V> a() {
                i.this.d();
                if (i.this.c == this.c) {
                    return (ListIterator) this.b;
                }
                throw new ConcurrentModificationException();
            }

            @Override
            public final void add(V v) {
                boolean zIsEmpty = j.this.isEmpty();
                a().add(v);
                j jVar = j.this;
                o.this.f++;
                if (zIsEmpty) {
                    jVar.b();
                }
            }

            @Override
            public final boolean hasPrevious() {
                return a().hasPrevious();
            }

            @Override
            public final int nextIndex() {
                return a().nextIndex();
            }

            @Override
            public final V previous() {
                return a().previous();
            }

            @Override
            public final int previousIndex() {
                return a().previousIndex();
            }

            @Override
            public final void set(V v) {
                a().set(v);
            }

            public a(int i) {
                super(j.this.f().listIterator(i));
            }
        }

        public j(K k, List<V> list, o<K, V>.i iVar) {
            super(k, list, iVar);
        }

        @Override
        public final void add(int i, V v) {
            d();
            boolean zIsEmpty = this.c.isEmpty();
            ((List) this.c).add(i, v);
            o.this.f++;
            if (zIsEmpty) {
                b();
            }
        }

        @Override
        public final boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            d();
            int size = this.c.size();
            boolean zAddAll = ((List) this.c).addAll(i, collection);
            if (zAddAll) {
                int size2 = this.c.size();
                o oVar = o.this;
                oVar.f = (size2 - size) + oVar.f;
                if (size == 0) {
                    b();
                }
            }
            return zAddAll;
        }

        public final List<V> f() {
            return (List) this.c;
        }

        @Override
        public final V get(int i) {
            d();
            return (V) ((List) this.c).get(i);
        }

        @Override
        public final int indexOf(Object obj) {
            d();
            return ((List) this.c).indexOf(obj);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            d();
            return ((List) this.c).lastIndexOf(obj);
        }

        @Override
        public final ListIterator<V> listIterator() {
            d();
            return new a();
        }

        @Override
        public final V remove(int i) {
            d();
            V v = (V) ((List) this.c).remove(i);
            o.this.f--;
            e();
            return v;
        }

        @Override
        public final V set(int i, V v) {
            d();
            return (V) ((List) this.c).set(i, v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v1, types: [com.yandex.mobile.ads.impl.o$i] */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v3 */
        @Override
        public final List<V> subList(int i, int i2) {
            d();
            o oVar = o.this;
            K k = this.b;
            List listSubList = ((List) this.c).subList(i, i2);
            o<K, V>.i iVar = this.d;
            ?? r3 = this;
            if (iVar != null) {
                r3 = iVar;
            }
            oVar.getClass();
            return listSubList instanceof RandomAccess ? new f(oVar, k, listSubList, r3) : new j(k, listSubList, r3);
        }

        @Override
        public final ListIterator<V> listIterator(int i) {
            d();
            return new a(i);
        }
    }

    public final Map<K, Collection<V>> c() {
        return this.e;
    }

    public final void d() {
        Iterator<Collection<V>> it = this.e.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.e.clear();
        this.f = 0;
    }

    public final Map<K, Collection<V>> e() {
        Map<K, Collection<V>> map = this.e;
        if (map instanceof NavigableMap) {
            return new d((NavigableMap) this.e);
        }
        return map instanceof SortedMap ? new g((SortedMap) this.e) : new a(this.e);
    }

    public final Set<K> f() {
        Map<K, Collection<V>> map = this.e;
        if (map instanceof NavigableMap) {
            return new e((NavigableMap) this.e);
        }
        return map instanceof SortedMap ? new h((SortedMap) this.e) : new c(this.e);
    }

    public final void a(Map<K, Collection<V>> map) {
        this.e = map;
        this.f = 0;
        for (Collection<V> collection : map.values()) {
            if (collection.isEmpty()) {
                throw new IllegalArgumentException();
            }
            this.f = collection.size() + this.f;
        }
    }
}
