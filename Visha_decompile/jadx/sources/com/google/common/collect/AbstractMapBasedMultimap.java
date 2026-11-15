package com.google.common.collect;

import defpackage.r37;
import defpackage.ue9;
import defpackage.xd8;
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

abstract class AbstractMapBasedMultimap<K, V> extends com.google.common.collect.a implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;
    private transient Map<K, Collection<V>> map;
    private transient int totalSize;

    public class a extends d {
        public a() {
            super();
        }

        @Override
        public Object a(Object obj, Object obj2) {
            return obj2;
        }
    }

    public class b extends d {
        public b() {
            super();
        }

        @Override
        public Map.Entry a(Object obj, Object obj2) {
            return Maps.i(obj, obj2);
        }
    }

    public class c extends Maps.q {
        public final transient Map e;

        public class a extends Maps.i {
            public a() {
            }

            @Override
            public Map b() {
                return c.this;
            }

            @Override
            public boolean contains(Object obj) {
                return com.google.common.collect.g.c(c.this.e.entrySet(), obj);
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

        public class b implements Iterator {
            public final Iterator b;
            public Collection c;

            public b() {
                this.b = c.this.e.entrySet().iterator();
            }

            @Override
            public Map.Entry next() {
                Map.Entry entry = (Map.Entry) this.b.next();
                this.c = (Collection) entry.getValue();
                return c.this.f(entry);
            }

            @Override
            public boolean hasNext() {
                return this.b.hasNext();
            }

            @Override
            public void remove() {
                xd8.v(this.c != null, "no calls to next() since the last call to remove()");
                this.b.remove();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, this.c.size());
                this.c.clear();
                this.c = null;
            }
        }

        public c(Map map) {
            this.e = map;
        }

        @Override
        public Set a() {
            return new a();
        }

        @Override
        public void clear() {
            if (this.e == AbstractMapBasedMultimap.this.map) {
                AbstractMapBasedMultimap.this.clear();
            } else {
                Iterators.d(new b());
            }
        }

        @Override
        public boolean containsKey(Object obj) {
            return Maps.u(this.e, obj);
        }

        @Override
        public Collection get(Object obj) {
            Collection<V> collection = (Collection) Maps.v(this.e, obj);
            if (collection == null) {
                return null;
            }
            return AbstractMapBasedMultimap.this.wrapCollection(obj, collection);
        }

        @Override
        public Collection remove(Object obj) {
            Collection<? extends V> collection = (Collection) this.e.remove(obj);
            if (collection == null) {
                return null;
            }
            Collection<V> collectionCreateCollection = AbstractMapBasedMultimap.this.createCollection();
            collectionCreateCollection.addAll(collection);
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, collection.size());
            collection.clear();
            return collectionCreateCollection;
        }

        @Override
        public boolean equals(Object obj) {
            return this == obj || this.e.equals(obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Map.Entry f(Map.Entry entry) {
            Object key = entry.getKey();
            return Maps.i(key, AbstractMapBasedMultimap.this.wrapCollection(key, (Collection) entry.getValue()));
        }

        @Override
        public int hashCode() {
            return this.e.hashCode();
        }

        @Override
        public Set keySet() {
            return AbstractMapBasedMultimap.this.keySet();
        }

        @Override
        public int size() {
            return this.e.size();
        }

        @Override
        public String toString() {
            return this.e.toString();
        }
    }

    public abstract class d implements Iterator {
        public final Iterator b;
        public Object c = null;
        public Collection d = null;
        public Iterator e = Iterators.j();

        public d() {
            this.b = AbstractMapBasedMultimap.this.map.entrySet().iterator();
        }

        public abstract Object a(Object obj, Object obj2);

        @Override
        public boolean hasNext() {
            return this.b.hasNext() || this.e.hasNext();
        }

        @Override
        public Object next() {
            if (!this.e.hasNext()) {
                Map.Entry entry = (Map.Entry) this.b.next();
                this.c = entry.getKey();
                Collection collection = (Collection) entry.getValue();
                this.d = collection;
                this.e = collection.iterator();
            }
            return a(r37.a(this.c), this.e.next());
        }

        @Override
        public void remove() {
            this.e.remove();
            Collection collection = this.d;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.b.remove();
            }
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
        }
    }

    public class e extends Maps.l {

        public class a implements Iterator {
            public Map.Entry b;
            public final Iterator c;
            public final e d;

            public a(e eVar, Iterator it) {
                this.c = it;
                this.d = eVar;
            }

            @Override
            public boolean hasNext() {
                return this.c.hasNext();
            }

            @Override
            public Object next() {
                Map.Entry entry = (Map.Entry) this.c.next();
                this.b = entry;
                return entry.getKey();
            }

            @Override
            public void remove() {
                xd8.v(this.b != null, "no calls to next() since the last call to remove()");
                Collection collection = (Collection) this.b.getValue();
                this.c.remove();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, collection.size());
                collection.clear();
                this.b = null;
            }
        }

        public e(Map map) {
            super(map);
        }

        @Override
        public void clear() {
            Iterators.d(iterator());
        }

        @Override
        public boolean containsAll(Collection collection) {
            return c().keySet().containsAll(collection);
        }

        @Override
        public boolean equals(Object obj) {
            return this == obj || c().keySet().equals(obj);
        }

        @Override
        public int hashCode() {
            return c().keySet().hashCode();
        }

        @Override
        public Iterator iterator() {
            return new a(this, c().entrySet().iterator());
        }

        @Override
        public boolean remove(Object obj) {
            int size;
            Collection collection = (Collection) c().remove(obj);
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

    public final class f extends i implements NavigableMap {
        public f(NavigableMap navigableMap) {
            super(navigableMap);
        }

        @Override
        public Map.Entry ceilingEntry(Object obj) {
            Map.Entry<K, V> entryCeilingEntry = k().ceilingEntry(obj);
            if (entryCeilingEntry == null) {
                return null;
            }
            return f(entryCeilingEntry);
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
            return f(entryFirstEntry);
        }

        @Override
        public Map.Entry floorEntry(Object obj) {
            Map.Entry<K, V> entryFloorEntry = k().floorEntry(obj);
            if (entryFloorEntry == null) {
                return null;
            }
            return f(entryFloorEntry);
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
            return f(entryHigherEntry);
        }

        @Override
        public Object higherKey(Object obj) {
            return k().higherKey(obj);
        }

        @Override
        public NavigableSet g() {
            return new g(k());
        }

        @Override
        public Map.Entry lastEntry() {
            Map.Entry<K, V> entryLastEntry = k().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return f(entryLastEntry);
        }

        @Override
        public Map.Entry lowerEntry(Object obj) {
            Map.Entry<K, V> entryLowerEntry = k().lowerEntry(obj);
            if (entryLowerEntry == null) {
                return null;
            }
            return f(entryLowerEntry);
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
            return h();
        }

        public Map.Entry o(Iterator it) {
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
        public NavigableMap headMap(Object obj, boolean z) {
            return new f(k().headMap(obj, z));
        }

        @Override
        public NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return new f(k().subMap(obj, z, obj2, z2));
        }

        @Override
        public NavigableMap tailMap(Object obj, boolean z) {
            return new f(k().tailMap(obj, z));
        }
    }

    public final class g extends j implements NavigableSet {
        public g(NavigableMap navigableMap) {
            super(navigableMap);
        }

        @Override
        public Object ceiling(Object obj) {
            return c().ceilingKey(obj);
        }

        @Override
        public Iterator descendingIterator() {
            return descendingSet().iterator();
        }

        @Override
        public NavigableSet descendingSet() {
            return new g(c().descendingMap());
        }

        @Override
        public NavigableSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override
        public Object floor(Object obj) {
            return c().floorKey(obj);
        }

        @Override
        public Object higher(Object obj) {
            return c().higherKey(obj);
        }

        @Override
        public NavigableMap c() {
            return (NavigableMap) super.c();
        }

        @Override
        public NavigableSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override
        public NavigableSet tailSet(Object obj) {
            return tailSet(obj, true);
        }

        @Override
        public Object lower(Object obj) {
            return c().lowerKey(obj);
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
        public NavigableSet headSet(Object obj, boolean z) {
            return new g(c().headMap(obj, z));
        }

        @Override
        public NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return new g(c().subMap(obj, z, obj2, z2));
        }

        @Override
        public NavigableSet tailSet(Object obj, boolean z) {
            return new g(c().tailMap(obj, z));
        }
    }

    public class h extends l implements RandomAccess {
        public h(Object obj, List list, k kVar) {
            super(obj, list, kVar);
        }
    }

    public class i extends c implements SortedMap {
        public SortedSet g;

        public i(SortedMap sortedMap) {
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

        @Override
        public SortedSet g() {
            return new j(k());
        }

        @Override
        public SortedSet keySet() {
            SortedSet sortedSet = this.g;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet sortedSetG = g();
            this.g = sortedSetG;
            return sortedSetG;
        }

        public SortedMap headMap(Object obj) {
            return new i(k().headMap(obj));
        }

        public SortedMap k() {
            return (SortedMap) this.e;
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

    public class j extends e implements SortedSet {
        public j(SortedMap sortedMap) {
            super(sortedMap);
        }

        public SortedMap c() {
            return (SortedMap) super.c();
        }

        @Override
        public Comparator comparator() {
            return c().comparator();
        }

        @Override
        public Object first() {
            return c().firstKey();
        }

        public SortedSet headSet(Object obj) {
            return new j(c().headMap(obj));
        }

        @Override
        public Object last() {
            return c().lastKey();
        }

        public SortedSet subSet(Object obj, Object obj2) {
            return new j(c().subMap(obj, obj2));
        }

        public SortedSet tailSet(Object obj) {
            return new j(c().tailMap(obj));
        }
    }

    public class m extends o implements NavigableSet {
        public m(Object obj, NavigableSet navigableSet, k kVar) {
            super(obj, navigableSet, kVar);
        }

        @Override
        public Object ceiling(Object obj) {
            return l().ceiling(obj);
        }

        @Override
        public Iterator descendingIterator() {
            return new k.a(l().descendingIterator());
        }

        @Override
        public NavigableSet descendingSet() {
            return n(l().descendingSet());
        }

        @Override
        public Object floor(Object obj) {
            return l().floor(obj);
        }

        @Override
        public NavigableSet headSet(Object obj, boolean z) {
            return n(l().headSet(obj, z));
        }

        @Override
        public Object higher(Object obj) {
            return l().higher(obj);
        }

        @Override
        public Object lower(Object obj) {
            return l().lower(obj);
        }

        @Override
        public NavigableSet l() {
            return (NavigableSet) super.l();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [com.google.common.collect.AbstractMapBasedMultimap$k] */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        public final NavigableSet n(NavigableSet navigableSet) {
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object obj = this.b;
            k kVarC = c();
            ?? C = this;
            if (kVarC != null) {
                C = c();
            }
            return new m(obj, navigableSet, C);
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
        public NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return n(l().subSet(obj, z, obj2, z2));
        }

        @Override
        public NavigableSet tailSet(Object obj, boolean z) {
            return n(l().tailSet(obj, z));
        }
    }

    public class n extends k implements Set {
        public n(Object obj, Set set) {
            super(obj, set, null);
        }

        @Override
        public boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zJ = Sets.j((Set) this.c, collection);
            if (zJ) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.c.size() - size);
                k();
            }
            return zJ;
        }
    }

    public class o extends k implements SortedSet {
        public o(Object obj, SortedSet sortedSet, k kVar) {
            super(obj, sortedSet, kVar);
        }

        @Override
        public Comparator comparator() {
            return l().comparator();
        }

        @Override
        public Object first() {
            j();
            return l().first();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [com.google.common.collect.AbstractMapBasedMultimap$k] */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        @Override
        public SortedSet headSet(Object obj) {
            j();
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object objI = i();
            SortedSet sortedSetHeadSet = l().headSet(obj);
            k kVarC = c();
            ?? C = this;
            if (kVarC != null) {
                C = c();
            }
            return new o(objI, sortedSetHeadSet, C);
        }

        public SortedSet l() {
            return (SortedSet) f();
        }

        @Override
        public Object last() {
            j();
            return l().last();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [com.google.common.collect.AbstractMapBasedMultimap$k] */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        @Override
        public SortedSet subSet(Object obj, Object obj2) {
            j();
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object objI = i();
            SortedSet sortedSetSubSet = l().subSet(obj, obj2);
            k kVarC = c();
            ?? C = this;
            if (kVarC != null) {
                C = c();
            }
            return new o(objI, sortedSetSubSet, C);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [com.google.common.collect.AbstractMapBasedMultimap$k] */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        @Override
        public SortedSet tailSet(Object obj) {
            j();
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object objI = i();
            SortedSet sortedSetTailSet = l().tailSet(obj);
            k kVarC = c();
            ?? C = this;
            if (kVarC != null) {
                C = c();
            }
            return new o(objI, sortedSetTailSet, C);
        }
    }

    public AbstractMapBasedMultimap(Map<K, Collection<V>> map) {
        xd8.d(map.isEmpty());
        this.map = map;
    }

    public static int access$208(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i2 = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i2 + 1;
        return i2;
    }

    public static int access$210(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i2 = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i2 - 1;
        return i2;
    }

    public static int access$212(AbstractMapBasedMultimap abstractMapBasedMultimap, int i2) {
        int i3 = abstractMapBasedMultimap.totalSize + i2;
        abstractMapBasedMultimap.totalSize = i3;
        return i3;
    }

    public static int access$220(AbstractMapBasedMultimap abstractMapBasedMultimap, int i2) {
        int i3 = abstractMapBasedMultimap.totalSize - i2;
        abstractMapBasedMultimap.totalSize = i3;
        return i3;
    }

    public static Iterator b(Collection collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Collection a(Object obj) {
        Collection<V> collection = this.map.get(obj);
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateCollection = createCollection(obj);
        this.map.put(obj, collectionCreateCollection);
        return collectionCreateCollection;
    }

    public Map<K, Collection<V>> backingMap() {
        return this.map;
    }

    public final void c(Object obj) {
        Collection collection = (Collection) Maps.w(this.map, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.totalSize -= size;
        }
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
    public Map<K, Collection<V>> createAsMap() {
        return new c(this.map);
    }

    public abstract Collection<V> createCollection();

    public Collection<V> createCollection(K k2) {
        return createCollection();
    }

    @Override
    public Collection<Map.Entry<K, V>> createEntries() {
        return this instanceof ue9 ? new com.google.common.collect.a.b() : new com.google.common.collect.a.C0104a();
    }

    @Override
    public Set<K> createKeySet() {
        return new e(this.map);
    }

    @Override
    public com.google.common.collect.j createKeys() {
        return new Multimaps.c(this);
    }

    public final Map<K, Collection<V>> createMaybeNavigableAsMap() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new f((NavigableMap) this.map);
        }
        return map instanceof SortedMap ? new i((SortedMap) this.map) : new c(this.map);
    }

    public final Set<K> createMaybeNavigableKeySet() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new g((NavigableMap) this.map);
        }
        return map instanceof SortedMap ? new j((SortedMap) this.map) : new e(this.map);
    }

    public Collection<V> createUnmodifiableEmptyCollection() {
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection());
    }

    @Override
    public Collection<V> createValues() {
        return new com.google.common.collect.a.c();
    }

    @Override
    public Collection<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override
    public Iterator<Map.Entry<K, V>> entryIterator() {
        return new b();
    }

    @Override
    public Collection<V> get(K k2) {
        Collection<V> collectionCreateCollection = this.map.get(k2);
        if (collectionCreateCollection == null) {
            collectionCreateCollection = createCollection(k2);
        }
        return wrapCollection(k2, collectionCreateCollection);
    }

    @Override
    public boolean put(K k2, V v) {
        Collection<V> collection = this.map.get(k2);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.totalSize++;
            return true;
        }
        Collection<V> collectionCreateCollection = createCollection(k2);
        if (!collectionCreateCollection.add(v)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.totalSize++;
        this.map.put(k2, collectionCreateCollection);
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

    public Collection<V> replaceValues(K k2, Iterable<? extends V> iterable) {
        Iterator<? extends V> it = iterable.iterator();
        if (!it.hasNext()) {
            return removeAll(k2);
        }
        Collection collectionA = a(k2);
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

    public final void setMap(Map<K, Collection<V>> map) {
        this.map = map;
        this.totalSize = 0;
        for (Collection<V> collection : map.values()) {
            xd8.d(!collection.isEmpty());
            this.totalSize += collection.size();
        }
    }

    @Override
    public int size() {
        return this.totalSize;
    }

    public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    @Override
    public Iterator<V> valueIterator() {
        return new a();
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    public Collection<V> wrapCollection(K k2, Collection<V> collection) {
        return new k(k2, collection, null);
    }

    public final List<V> wrapList(K k2, List<V> list, AbstractMapBasedMultimap<K, V>.k kVar) {
        return list instanceof RandomAccess ? new h(k2, list, kVar) : new l(k2, list, kVar);
    }

    public class k extends AbstractCollection {
        public final Object b;
        public Collection c;
        public final k d;
        public final Collection e;

        public k(Object obj, Collection collection, k kVar) {
            this.b = obj;
            this.c = collection;
            this.d = kVar;
            this.e = kVar == null ? null : kVar.f();
        }

        @Override
        public boolean add(Object obj) {
            j();
            boolean zIsEmpty = this.c.isEmpty();
            boolean zAdd = this.c.add(obj);
            if (zAdd) {
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (zIsEmpty) {
                    b();
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
            boolean zAddAll = this.c.addAll(collection);
            if (zAddAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.c.size() - size);
                if (size == 0) {
                    b();
                }
            }
            return zAddAll;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void b() {
            k kVar = this.d;
            if (kVar != null) {
                kVar.b();
            } else {
                AbstractMapBasedMultimap.this.map.put(this.b, this.c);
            }
        }

        public k c() {
            return this.d;
        }

        @Override
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.c.clear();
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, size);
            k();
        }

        @Override
        public boolean contains(Object obj) {
            j();
            return this.c.contains(obj);
        }

        @Override
        public boolean containsAll(Collection collection) {
            j();
            return this.c.containsAll(collection);
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            j();
            return this.c.equals(obj);
        }

        public Collection f() {
            return this.c;
        }

        @Override
        public int hashCode() {
            j();
            return this.c.hashCode();
        }

        public Object i() {
            return this.b;
        }

        @Override
        public Iterator iterator() {
            j();
            return new a();
        }

        public void j() {
            Collection collection;
            k kVar = this.d;
            if (kVar != null) {
                kVar.j();
                if (this.d.f() != this.e) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.c.isEmpty() || (collection = (Collection) AbstractMapBasedMultimap.this.map.get(this.b)) == null) {
                    return;
                }
                this.c = collection;
            }
        }

        public void k() {
            k kVar = this.d;
            if (kVar != null) {
                kVar.k();
            } else if (this.c.isEmpty()) {
                AbstractMapBasedMultimap.this.map.remove(this.b);
            }
        }

        @Override
        public boolean remove(Object obj) {
            j();
            boolean zRemove = this.c.remove(obj);
            if (zRemove) {
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                k();
            }
            return zRemove;
        }

        @Override
        public boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.c.removeAll(collection);
            if (zRemoveAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.c.size() - size);
                k();
            }
            return zRemoveAll;
        }

        @Override
        public boolean retainAll(Collection collection) {
            xd8.o(collection);
            int size = size();
            boolean zRetainAll = this.c.retainAll(collection);
            if (zRetainAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.c.size() - size);
                k();
            }
            return zRetainAll;
        }

        @Override
        public int size() {
            j();
            return this.c.size();
        }

        @Override
        public String toString() {
            j();
            return this.c.toString();
        }

        public class a implements Iterator {
            public final Iterator b;
            public final Collection c;

            public a() {
                Collection collection = k.this.c;
                this.c = collection;
                this.b = AbstractMapBasedMultimap.b(collection);
            }

            public Iterator a() {
                b();
                return this.b;
            }

            public void b() {
                k.this.j();
                if (k.this.c != this.c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public boolean hasNext() {
                b();
                return this.b.hasNext();
            }

            @Override
            public Object next() {
                b();
                return this.b.next();
            }

            @Override
            public void remove() {
                this.b.remove();
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                k.this.k();
            }

            public a(Iterator it) {
                this.c = k.this.c;
                this.b = it;
            }
        }
    }

    public class l extends k implements List {

        public class a extends k.a implements ListIterator {
            public a() {
                super();
            }

            @Override
            public void add(Object obj) {
                boolean zIsEmpty = l.this.isEmpty();
                c().add(obj);
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (zIsEmpty) {
                    l.this.b();
                }
            }

            public final ListIterator c() {
                return (ListIterator) a();
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

            public a(int i) {
                super(l.this.l().listIterator(i));
            }
        }

        public l(Object obj, List list, k kVar) {
            super(obj, list, kVar);
        }

        @Override
        public void add(int i, Object obj) {
            j();
            boolean zIsEmpty = f().isEmpty();
            l().add(i, obj);
            AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
            if (zIsEmpty) {
                b();
            }
        }

        @Override
        public boolean addAll(int i, Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = l().addAll(i, collection);
            if (zAddAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, f().size() - size);
                if (size == 0) {
                    b();
                }
            }
            return zAddAll;
        }

        @Override
        public Object get(int i) {
            j();
            return l().get(i);
        }

        @Override
        public int indexOf(Object obj) {
            j();
            return l().indexOf(obj);
        }

        public List l() {
            return (List) f();
        }

        @Override
        public int lastIndexOf(Object obj) {
            j();
            return l().lastIndexOf(obj);
        }

        @Override
        public ListIterator listIterator() {
            j();
            return new a();
        }

        @Override
        public Object remove(int i) {
            j();
            Object objRemove = l().remove(i);
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
            k();
            return objRemove;
        }

        @Override
        public Object set(int i, Object obj) {
            j();
            return l().set(i, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.AbstractMapBasedMultimap] */
        /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.AbstractMapBasedMultimap$k] */
        /* JADX WARN: Type inference failed for: r3v4 */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override
        public List subList(int i, int i2) {
            j();
            ?? r0 = AbstractMapBasedMultimap.this;
            Object objI = i();
            List listSubList = l().subList(i, i2);
            k kVarC = c();
            ?? C = this;
            if (kVarC != null) {
                C = c();
            }
            return r0.wrapList(objI, listSubList, C);
        }

        @Override
        public ListIterator listIterator(int i) {
            j();
            return new a(i);
        }
    }
}
