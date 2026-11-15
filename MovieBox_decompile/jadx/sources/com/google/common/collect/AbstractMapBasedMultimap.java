package com.google.common.collect;

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

abstract class AbstractMapBasedMultimap<K, V> extends com.google.common.collect.c implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;
    private transient Map<K, Collection<V>> map;
    private transient int totalSize;

    class a extends d {
        a() {
            super();
        }

        @Override
        Object a(Object obj, Object obj2) {
            return obj2;
        }
    }

    class b extends d {
        b() {
            super();
        }

        @Override
        public Map.Entry a(Object obj, Object obj2) {
            return Maps.i(obj, obj2);
        }
    }

    private class c extends Maps.q {

        final transient Map f29447d;

        class a extends Maps.i {
            a() {
            }

            @Override
            Map a() {
                return c.this;
            }

            @Override
            public boolean contains(Object obj) {
                return f2.c(c.this.f29447d.entrySet(), obj);
            }

            @Override
            public Iterator iterator() {
                return c.this.new b();
            }

            @Override
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                AbstractMapBasedMultimap.this.c(entry.getKey());
                return true;
            }
        }

        class b implements Iterator {

            final Iterator f29450a;

            Collection f29451b;

            b() {
                this.f29450a = c.this.f29447d.entrySet().iterator();
            }

            @Override
            public Map.Entry next() {
                Map.Entry entry = (Map.Entry) this.f29450a.next();
                this.f29451b = (Collection) entry.getValue();
                return c.this.h(entry);
            }

            @Override
            public boolean hasNext() {
                return this.f29450a.hasNext();
            }

            @Override
            public void remove() {
                com.google.common.base.m.v(this.f29451b != null, "no calls to next() since the last call to remove()");
                this.f29450a.remove();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, this.f29451b.size());
                this.f29451b.clear();
                this.f29451b = null;
            }
        }

        c(Map map) {
            this.f29447d = map;
        }

        @Override
        protected Set a() {
            return new a();
        }

        @Override
        public void clear() {
            if (this.f29447d == AbstractMapBasedMultimap.this.map) {
                AbstractMapBasedMultimap.this.clear();
            } else {
                Iterators.d(new b());
            }
        }

        @Override
        public boolean containsKey(Object obj) {
            return Maps.u(this.f29447d, obj);
        }

        @Override
        public Collection get(Object obj) {
            Collection<V> collection = (Collection) Maps.v(this.f29447d, obj);
            if (collection == null) {
                return null;
            }
            return AbstractMapBasedMultimap.this.wrapCollection(obj, collection);
        }

        @Override
        public boolean equals(Object obj) {
            return this == obj || this.f29447d.equals(obj);
        }

        @Override
        public Collection remove(Object obj) {
            Collection<? extends V> collection = (Collection) this.f29447d.remove(obj);
            if (collection == null) {
                return null;
            }
            Collection<V> collectionCreateCollection = AbstractMapBasedMultimap.this.createCollection();
            collectionCreateCollection.addAll(collection);
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, collection.size());
            collection.clear();
            return collectionCreateCollection;
        }

        /* JADX WARN: Multi-variable type inference failed */
        Map.Entry h(Map.Entry entry) {
            Object key = entry.getKey();
            return Maps.i(key, AbstractMapBasedMultimap.this.wrapCollection(key, (Collection) entry.getValue()));
        }

        @Override
        public int hashCode() {
            return this.f29447d.hashCode();
        }

        @Override
        public Set keySet() {
            return AbstractMapBasedMultimap.this.keySet();
        }

        @Override
        public int size() {
            return this.f29447d.size();
        }

        @Override
        public String toString() {
            return this.f29447d.toString();
        }
    }

    private abstract class d implements Iterator {

        final Iterator f29453a;

        Object f29454b = null;

        Collection f29455c = null;

        Iterator f29456d = Iterators.j();

        d() {
            this.f29453a = AbstractMapBasedMultimap.this.map.entrySet().iterator();
        }

        abstract Object a(Object obj, Object obj2);

        @Override
        public boolean hasNext() {
            return this.f29453a.hasNext() || this.f29456d.hasNext();
        }

        @Override
        public Object next() {
            if (!this.f29456d.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f29453a.next();
                this.f29454b = entry.getKey();
                Collection collection = (Collection) entry.getValue();
                this.f29455c = collection;
                this.f29456d = collection.iterator();
            }
            return a(m3.a(this.f29454b), this.f29456d.next());
        }

        @Override
        public void remove() {
            this.f29456d.remove();
            Collection collection = this.f29455c;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.f29453a.remove();
            }
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
        }
    }

    private class e extends Maps.l {

        class a implements Iterator {

            Map.Entry f29459a;

            final Iterator f29460b;

            final e f29461c;

            a(e eVar, Iterator it) {
                this.f29460b = it;
                this.f29461c = eVar;
            }

            @Override
            public boolean hasNext() {
                return this.f29460b.hasNext();
            }

            @Override
            public Object next() {
                Map.Entry entry = (Map.Entry) this.f29460b.next();
                this.f29459a = entry;
                return entry.getKey();
            }

            @Override
            public void remove() {
                com.google.common.base.m.v(this.f29459a != null, "no calls to next() since the last call to remove()");
                Collection collection = (Collection) this.f29459a.getValue();
                this.f29460b.remove();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, collection.size());
                collection.clear();
                this.f29459a = null;
            }
        }

        e(Map map) {
            super(map);
        }

        @Override
        public void clear() {
            Iterators.d(iterator());
        }

        @Override
        public boolean containsAll(Collection collection) {
            return b().keySet().containsAll(collection);
        }

        @Override
        public boolean equals(Object obj) {
            return this == obj || b().keySet().equals(obj);
        }

        @Override
        public int hashCode() {
            return b().keySet().hashCode();
        }

        @Override
        public Iterator iterator() {
            return new a(this, b().entrySet().iterator());
        }

        @Override
        public boolean remove(Object obj) {
            int size;
            Collection collection = (Collection) b().remove(obj);
            if (collection != null) {
                size = collection.size();
                collection.clear();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, size);
            } else {
                size = 0;
            }
            return size > 0;
        }
    }

    private final class f extends i implements NavigableMap {
        f(NavigableMap navigableMap) {
            super(navigableMap);
        }

        @Override
        public Map.Entry ceilingEntry(Object obj) {
            Map.Entry<K, V> entryCeilingEntry = k().ceilingEntry(obj);
            if (entryCeilingEntry == null) {
                return null;
            }
            return h(entryCeilingEntry);
        }

        @Override
        public Object ceilingKey(Object obj) {
            return k().ceilingKey(obj);
        }

        @Override
        public NavigableSet descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override
        public NavigableMap descendingMap() {
            return new f(k().descendingMap());
        }

        @Override
        public Map.Entry firstEntry() {
            Map.Entry<K, V> entryFirstEntry = k().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return h(entryFirstEntry);
        }

        @Override
        public Map.Entry floorEntry(Object obj) {
            Map.Entry<K, V> entryFloorEntry = k().floorEntry(obj);
            if (entryFloorEntry == null) {
                return null;
            }
            return h(entryFloorEntry);
        }

        @Override
        public Object floorKey(Object obj) {
            return k().floorKey(obj);
        }

        @Override
        public Map.Entry higherEntry(Object obj) {
            Map.Entry<K, V> entryHigherEntry = k().higherEntry(obj);
            if (entryHigherEntry == null) {
                return null;
            }
            return h(entryHigherEntry);
        }

        @Override
        public Object higherKey(Object obj) {
            return k().higherKey(obj);
        }

        @Override
        public NavigableSet i() {
            return new g(k());
        }

        @Override
        public Map.Entry lastEntry() {
            Map.Entry<K, V> entryLastEntry = k().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return h(entryLastEntry);
        }

        @Override
        public Map.Entry lowerEntry(Object obj) {
            Map.Entry<K, V> entryLowerEntry = k().lowerEntry(obj);
            if (entryLowerEntry == null) {
                return null;
            }
            return h(entryLowerEntry);
        }

        @Override
        public Object lowerKey(Object obj) {
            return k().lowerKey(obj);
        }

        @Override
        public NavigableMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override
        public NavigableSet keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override
        public NavigableSet navigableKeySet() {
            return j();
        }

        Map.Entry o(Iterator it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) it.next();
            Collection<V> collectionCreateCollection = AbstractMapBasedMultimap.this.createCollection();
            collectionCreateCollection.addAll((Collection) entry.getValue());
            it.remove();
            return Maps.i(entry.getKey(), AbstractMapBasedMultimap.this.unmodifiableCollectionSubclass(collectionCreateCollection));
        }

        @Override
        public NavigableMap k() {
            return (NavigableMap) super.k();
        }

        @Override
        public Map.Entry pollFirstEntry() {
            return o(entrySet().iterator());
        }

        @Override
        public Map.Entry pollLastEntry() {
            return o(descendingMap().entrySet().iterator());
        }

        @Override
        public NavigableMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override
        public NavigableMap tailMap(Object obj) {
            return tailMap(obj, true);
        }

        @Override
        public NavigableMap headMap(Object obj, boolean z10) {
            return new f(k().headMap(obj, z10));
        }

        @Override
        public NavigableMap subMap(Object obj, boolean z10, Object obj2, boolean z11) {
            return new f(k().subMap(obj, z10, obj2, z11));
        }

        @Override
        public NavigableMap tailMap(Object obj, boolean z10) {
            return new f(k().tailMap(obj, z10));
        }
    }

    private final class g extends j implements NavigableSet {
        g(NavigableMap navigableMap) {
            super(navigableMap);
        }

        @Override
        public NavigableSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override
        public Object ceiling(Object obj) {
            return b().ceilingKey(obj);
        }

        @Override
        public Iterator descendingIterator() {
            return descendingSet().iterator();
        }

        @Override
        public NavigableSet descendingSet() {
            return new g(b().descendingMap());
        }

        @Override
        public NavigableMap b() {
            return (NavigableMap) super.b();
        }

        @Override
        public NavigableSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override
        public Object floor(Object obj) {
            return b().floorKey(obj);
        }

        @Override
        public NavigableSet tailSet(Object obj) {
            return tailSet(obj, true);
        }

        @Override
        public Object higher(Object obj) {
            return b().higherKey(obj);
        }

        @Override
        public Object lower(Object obj) {
            return b().lowerKey(obj);
        }

        @Override
        public Object pollFirst() {
            return Iterators.t(iterator());
        }

        @Override
        public Object pollLast() {
            return Iterators.t(descendingIterator());
        }

        @Override
        public NavigableSet headSet(Object obj, boolean z10) {
            return new g(b().headMap(obj, z10));
        }

        @Override
        public NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
            return new g(b().subMap(obj, z10, obj2, z11));
        }

        @Override
        public NavigableSet tailSet(Object obj, boolean z10) {
            return new g(b().tailMap(obj, z10));
        }
    }

    private class h extends l implements RandomAccess {
        h(Object obj, List list, k kVar) {
            super(obj, list, kVar);
        }
    }

    private class i extends c implements SortedMap {

        SortedSet f29465f;

        i(SortedMap sortedMap) {
            super(sortedMap);
        }

        @Override
        public Comparator comparator() {
            return k().comparator();
        }

        @Override
        public Object firstKey() {
            return k().firstKey();
        }

        public SortedMap headMap(Object obj) {
            return new i(k().headMap(obj));
        }

        @Override
        public SortedSet i() {
            return new j(k());
        }

        @Override
        public SortedSet keySet() {
            SortedSet sortedSet = this.f29465f;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet sortedSetI = i();
            this.f29465f = sortedSetI;
            return sortedSetI;
        }

        SortedMap k() {
            return (SortedMap) this.f29447d;
        }

        @Override
        public Object lastKey() {
            return k().lastKey();
        }

        public SortedMap subMap(Object obj, Object obj2) {
            return new i(k().subMap(obj, obj2));
        }

        public SortedMap tailMap(Object obj) {
            return new i(k().tailMap(obj));
        }
    }

    private class j extends e implements SortedSet {
        j(SortedMap sortedMap) {
            super(sortedMap);
        }

        SortedMap b() {
            return (SortedMap) super.b();
        }

        @Override
        public Comparator comparator() {
            return b().comparator();
        }

        @Override
        public Object first() {
            return b().firstKey();
        }

        public SortedSet headSet(Object obj) {
            return new j(b().headMap(obj));
        }

        @Override
        public Object last() {
            return b().lastKey();
        }

        public SortedSet subSet(Object obj, Object obj2) {
            return new j(b().subMap(obj, obj2));
        }

        public SortedSet tailSet(Object obj) {
            return new j(b().tailMap(obj));
        }
    }

    class m extends o implements NavigableSet {
        m(Object obj, NavigableSet navigableSet, k kVar) {
            super(obj, navigableSet, kVar);
        }

        private NavigableSet l(NavigableSet navigableSet) {
            return new m(this.f29468a, navigableSet, b() == null ? this : b());
        }

        @Override
        public Object ceiling(Object obj) {
            return i().ceiling(obj);
        }

        @Override
        public Iterator descendingIterator() {
            return new k.a(i().descendingIterator());
        }

        @Override
        public NavigableSet descendingSet() {
            return l(i().descendingSet());
        }

        @Override
        public Object floor(Object obj) {
            return i().floor(obj);
        }

        @Override
        public NavigableSet headSet(Object obj, boolean z10) {
            return l(i().headSet(obj, z10));
        }

        @Override
        public Object higher(Object obj) {
            return i().higher(obj);
        }

        @Override
        public NavigableSet i() {
            return (NavigableSet) super.i();
        }

        @Override
        public Object lower(Object obj) {
            return i().lower(obj);
        }

        @Override
        public Object pollFirst() {
            return Iterators.t(iterator());
        }

        @Override
        public Object pollLast() {
            return Iterators.t(descendingIterator());
        }

        @Override
        public NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
            return l(i().subSet(obj, z10, obj2, z11));
        }

        @Override
        public NavigableSet tailSet(Object obj, boolean z10) {
            return l(i().tailSet(obj, z10));
        }
    }

    class n extends k implements Set {
        n(Object obj, Set set) {
            super(obj, set, null);
        }

        @Override
        public boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zI = Sets.i((Set) this.f29469b, collection);
            if (zI) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f29469b.size() - size);
                g();
            }
            return zI;
        }
    }

    class o extends k implements SortedSet {
        o(Object obj, SortedSet sortedSet, k kVar) {
            super(obj, sortedSet, kVar);
        }

        @Override
        public Comparator comparator() {
            return i().comparator();
        }

        @Override
        public Object first() {
            f();
            return i().first();
        }

        @Override
        public SortedSet headSet(Object obj) {
            f();
            return new o(e(), i().headSet(obj), b() == null ? this : b());
        }

        SortedSet i() {
            return (SortedSet) c();
        }

        @Override
        public Object last() {
            f();
            return i().last();
        }

        @Override
        public SortedSet subSet(Object obj, Object obj2) {
            f();
            return new o(e(), i().subSet(obj, obj2), b() == null ? this : b());
        }

        @Override
        public SortedSet tailSet(Object obj) {
            f();
            return new o(e(), i().tailSet(obj), b() == null ? this : b());
        }
    }

    protected AbstractMapBasedMultimap(Map<K, Collection<V>> map) {
        com.google.common.base.m.d(map.isEmpty());
        this.map = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Collection a(Object obj) {
        Collection<V> collection = this.map.get(obj);
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateCollection = createCollection(obj);
        this.map.put(obj, collectionCreateCollection);
        return collectionCreateCollection;
    }

    static int access$208(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i10 = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i10 + 1;
        return i10;
    }

    static int access$210(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i10 = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i10 - 1;
        return i10;
    }

    static int access$212(AbstractMapBasedMultimap abstractMapBasedMultimap, int i10) {
        int i11 = abstractMapBasedMultimap.totalSize + i10;
        abstractMapBasedMultimap.totalSize = i11;
        return i11;
    }

    static int access$220(AbstractMapBasedMultimap abstractMapBasedMultimap, int i10) {
        int i11 = abstractMapBasedMultimap.totalSize - i10;
        abstractMapBasedMultimap.totalSize = i11;
        return i11;
    }

    public static Iterator b(Collection collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public void c(Object obj) {
        Collection collection = (Collection) Maps.w(this.map, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.totalSize -= size;
        }
    }

    Map<K, Collection<V>> backingMap() {
        return this.map;
    }

    @Override
    public void clear() {
        Iterator<Collection<V>> it = this.map.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.map.clear();
        this.totalSize = 0;
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override
    Map<K, Collection<V>> createAsMap() {
        return new c(this.map);
    }

    abstract Collection<V> createCollection();

    Collection<V> createCollection(K k10) {
        return createCollection();
    }

    @Override
    Collection<Map.Entry<K, V>> createEntries() {
        return this instanceof x3 ? new com.google.common.collect.c.b() : new com.google.common.collect.c.a();
    }

    @Override
    Set<K> createKeySet() {
        return new e(this.map);
    }

    @Override
    l3 createKeys() {
        return new Multimaps.c(this);
    }

    final Map<K, Collection<V>> createMaybeNavigableAsMap() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new f((NavigableMap) this.map);
        }
        return map instanceof SortedMap ? new i((SortedMap) this.map) : new c(this.map);
    }

    final Set<K> createMaybeNavigableKeySet() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new g((NavigableMap) this.map);
        }
        return map instanceof SortedMap ? new j((SortedMap) this.map) : new e(this.map);
    }

    Collection<V> createUnmodifiableEmptyCollection() {
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection());
    }

    @Override
    Collection<V> createValues() {
        return new com.google.common.collect.c.C0387c();
    }

    @Override
    public Collection<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override
    Iterator<Map.Entry<K, V>> entryIterator() {
        return new b();
    }

    @Override
    public Collection<V> get(K k10) {
        Collection<V> collectionCreateCollection = this.map.get(k10);
        if (collectionCreateCollection == null) {
            collectionCreateCollection = createCollection(k10);
        }
        return wrapCollection(k10, collectionCreateCollection);
    }

    @Override
    public boolean put(K k10, V v10) {
        Collection<V> collection = this.map.get(k10);
        if (collection != null) {
            if (!collection.add(v10)) {
                return false;
            }
            this.totalSize++;
            return true;
        }
        Collection<V> collectionCreateCollection = createCollection(k10);
        if (!collectionCreateCollection.add(v10)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.totalSize++;
        this.map.put(k10, collectionCreateCollection);
        return true;
    }

    @Override
    public Collection<V> removeAll(Object obj) {
        Collection<V> collectionRemove = this.map.remove(obj);
        if (collectionRemove == null) {
            return createUnmodifiableEmptyCollection();
        }
        Collection collectionCreateCollection = createCollection();
        collectionCreateCollection.addAll(collectionRemove);
        this.totalSize -= collectionRemove.size();
        collectionRemove.clear();
        return (Collection<V>) unmodifiableCollectionSubclass(collectionCreateCollection);
    }

    public Collection<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        Iterator<? extends V> it = iterable.iterator();
        if (!it.hasNext()) {
            return removeAll(k10);
        }
        Collection collectionA = a(k10);
        Collection collectionCreateCollection = createCollection();
        collectionCreateCollection.addAll(collectionA);
        this.totalSize -= collectionA.size();
        collectionA.clear();
        while (it.hasNext()) {
            if (collectionA.add(it.next())) {
                this.totalSize++;
            }
        }
        return (Collection<V>) unmodifiableCollectionSubclass(collectionCreateCollection);
    }

    final void setMap(Map<K, Collection<V>> map) {
        this.map = map;
        this.totalSize = 0;
        for (Collection<V> collection : map.values()) {
            com.google.common.base.m.d(!collection.isEmpty());
            this.totalSize += collection.size();
        }
    }

    @Override
    public int size() {
        return this.totalSize;
    }

    <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    @Override
    Iterator<V> valueIterator() {
        return new a();
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    Collection<V> wrapCollection(K k10, Collection<V> collection) {
        return new k(k10, collection, null);
    }

    final List<V> wrapList(K k10, List<V> list, AbstractMapBasedMultimap<K, V>.k kVar) {
        return list instanceof RandomAccess ? new h(k10, list, kVar) : new l(k10, list, kVar);
    }

    class k extends AbstractCollection {

        final Object f29468a;

        Collection f29469b;

        final k f29470c;

        final Collection f29471d;

        k(Object obj, Collection collection, k kVar) {
            this.f29468a = obj;
            this.f29469b = collection;
            this.f29470c = kVar;
            this.f29471d = kVar == null ? null : kVar.c();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            k kVar = this.f29470c;
            if (kVar != null) {
                kVar.a();
            } else {
                AbstractMapBasedMultimap.this.map.put(this.f29468a, this.f29469b);
            }
        }

        @Override
        public boolean add(Object obj) {
            f();
            boolean zIsEmpty = this.f29469b.isEmpty();
            boolean zAdd = this.f29469b.add(obj);
            if (zAdd) {
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (zIsEmpty) {
                    a();
                }
            }
            return zAdd;
        }

        @Override
        public boolean addAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.f29469b.addAll(collection);
            if (zAddAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f29469b.size() - size);
                if (size == 0) {
                    a();
                }
            }
            return zAddAll;
        }

        k b() {
            return this.f29470c;
        }

        Collection c() {
            return this.f29469b;
        }

        @Override
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f29469b.clear();
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, size);
            g();
        }

        @Override
        public boolean contains(Object obj) {
            f();
            return this.f29469b.contains(obj);
        }

        @Override
        public boolean containsAll(Collection collection) {
            f();
            return this.f29469b.containsAll(collection);
        }

        Object e() {
            return this.f29468a;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            f();
            return this.f29469b.equals(obj);
        }

        void f() {
            Collection collection;
            k kVar = this.f29470c;
            if (kVar != null) {
                kVar.f();
                if (this.f29470c.c() != this.f29471d) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.f29469b.isEmpty() || (collection = (Collection) AbstractMapBasedMultimap.this.map.get(this.f29468a)) == null) {
                    return;
                }
                this.f29469b = collection;
            }
        }

        void g() {
            k kVar = this.f29470c;
            if (kVar != null) {
                kVar.g();
            } else if (this.f29469b.isEmpty()) {
                AbstractMapBasedMultimap.this.map.remove(this.f29468a);
            }
        }

        @Override
        public int hashCode() {
            f();
            return this.f29469b.hashCode();
        }

        @Override
        public Iterator iterator() {
            f();
            return new a();
        }

        @Override
        public boolean remove(Object obj) {
            f();
            boolean zRemove = this.f29469b.remove(obj);
            if (zRemove) {
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                g();
            }
            return zRemove;
        }

        @Override
        public boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.f29469b.removeAll(collection);
            if (zRemoveAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f29469b.size() - size);
                g();
            }
            return zRemoveAll;
        }

        @Override
        public boolean retainAll(Collection collection) {
            com.google.common.base.m.o(collection);
            int size = size();
            boolean zRetainAll = this.f29469b.retainAll(collection);
            if (zRetainAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f29469b.size() - size);
                g();
            }
            return zRetainAll;
        }

        @Override
        public int size() {
            f();
            return this.f29469b.size();
        }

        @Override
        public String toString() {
            f();
            return this.f29469b.toString();
        }

        class a implements Iterator {

            final Iterator f29473a;

            final Collection f29474b;

            a() {
                Collection collection = k.this.f29469b;
                this.f29474b = collection;
                this.f29473a = AbstractMapBasedMultimap.b(collection);
            }

            Iterator a() {
                b();
                return this.f29473a;
            }

            void b() {
                k.this.f();
                if (k.this.f29469b != this.f29474b) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public boolean hasNext() {
                b();
                return this.f29473a.hasNext();
            }

            @Override
            public Object next() {
                b();
                return this.f29473a.next();
            }

            @Override
            public void remove() {
                this.f29473a.remove();
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                k.this.g();
            }

            a(Iterator it) {
                this.f29474b = k.this.f29469b;
                this.f29473a = it;
            }
        }
    }

    class l extends k implements List {

        private class a extends k.a implements ListIterator {
            a() {
                super();
            }

            private ListIterator c() {
                return (ListIterator) a();
            }

            @Override
            public void add(Object obj) {
                boolean zIsEmpty = l.this.isEmpty();
                c().add(obj);
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (zIsEmpty) {
                    l.this.a();
                }
            }

            @Override
            public boolean hasPrevious() {
                return c().hasPrevious();
            }

            @Override
            public int nextIndex() {
                return c().nextIndex();
            }

            @Override
            public Object previous() {
                return c().previous();
            }

            @Override
            public int previousIndex() {
                return c().previousIndex();
            }

            @Override
            public void set(Object obj) {
                c().set(obj);
            }

            public a(int i10) {
                super(l.this.i().listIterator(i10));
            }
        }

        l(Object obj, List list, k kVar) {
            super(obj, list, kVar);
        }

        @Override
        public void add(int i10, Object obj) {
            f();
            boolean zIsEmpty = c().isEmpty();
            i().add(i10, obj);
            AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
            if (zIsEmpty) {
                a();
            }
        }

        @Override
        public boolean addAll(int i10, Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = i().addAll(i10, collection);
            if (zAddAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, c().size() - size);
                if (size == 0) {
                    a();
                }
            }
            return zAddAll;
        }

        @Override
        public Object get(int i10) {
            f();
            return i().get(i10);
        }

        List i() {
            return (List) c();
        }

        @Override
        public int indexOf(Object obj) {
            f();
            return i().indexOf(obj);
        }

        @Override
        public int lastIndexOf(Object obj) {
            f();
            return i().lastIndexOf(obj);
        }

        @Override
        public ListIterator listIterator() {
            f();
            return new a();
        }

        @Override
        public Object remove(int i10) {
            f();
            Object objRemove = i().remove(i10);
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
            g();
            return objRemove;
        }

        @Override
        public Object set(int i10, Object obj) {
            f();
            return i().set(i10, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public List subList(int i10, int i11) {
            f();
            return AbstractMapBasedMultimap.this.wrapList(e(), i().subList(i10, i11), b() == null ? this : b());
        }

        @Override
        public ListIterator listIterator(int i10) {
            f();
            return new a(i10);
        }
    }
}
