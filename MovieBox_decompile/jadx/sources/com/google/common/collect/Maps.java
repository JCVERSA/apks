package com.google.common.collect;

import com.google.common.base.Predicates;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

public abstract class Maps {

    private enum EntryFunction implements com.google.common.base.f {
        KEY {
            @Override
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        },
        VALUE {
            @Override
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        };

        @Override
        public abstract Object apply(Object obj);

        EntryFunction(c cVar) {
            this();
        }
    }

    class a extends com.google.common.collect.b {

        final Map.Entry f29758a;

        final j f29759b;

        a(Map.Entry entry, j jVar) {
            this.f29758a = entry;
            this.f29759b = jVar;
        }

        @Override
        public Object getKey() {
            return this.f29758a.getKey();
        }

        @Override
        public Object getValue() {
            return this.f29759b.a(this.f29758a.getKey(), this.f29758a.getValue());
        }
    }

    class b implements com.google.common.base.f {

        final j f29760a;

        b(j jVar) {
            this.f29760a = jVar;
        }

        @Override
        public Map.Entry apply(Map.Entry entry) {
            return Maps.z(this.f29760a, entry);
        }
    }

    class c extends o4 {
        c(Iterator it) {
            super(it);
        }

        @Override
        public Object a(Map.Entry entry) {
            return entry.getKey();
        }
    }

    class d extends o4 {
        d(Iterator it) {
            super(it);
        }

        @Override
        public Object a(Map.Entry entry) {
            return entry.getValue();
        }
    }

    class e extends o4 {

        final com.google.common.base.f f29761b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Iterator it, com.google.common.base.f fVar) {
            super(it);
            this.f29761b = fVar;
        }

        @Override
        public Map.Entry a(Object obj) {
            return Maps.i(obj, this.f29761b.apply(obj));
        }
    }

    class f extends com.google.common.collect.b {

        final Map.Entry f29762a;

        f(Map.Entry entry) {
            this.f29762a = entry;
        }

        @Override
        public Object getKey() {
            return this.f29762a.getKey();
        }

        @Override
        public Object getValue() {
            return this.f29762a.getValue();
        }
    }

    class g implements j {

        final com.google.common.base.f f29763a;

        g(com.google.common.base.f fVar) {
            this.f29763a = fVar;
        }

        @Override
        public Object a(Object obj, Object obj2) {
            return this.f29763a.apply(obj2);
        }
    }

    static abstract class h extends n2 implements NavigableMap {

        private transient Comparator f29764a;

        private transient Set f29765b;

        private transient NavigableSet f29766c;

        class a extends i {
            a() {
            }

            @Override
            Map a() {
                return h.this;
            }

            @Override
            public Iterator iterator() {
                return h.this.m();
            }
        }

        h() {
        }

        private static Ordering o(Comparator comparator) {
            return Ordering.from(comparator).reverse();
        }

        @Override
        public Map.Entry ceilingEntry(Object obj) {
            return n().floorEntry(obj);
        }

        @Override
        public Object ceilingKey(Object obj) {
            return n().floorKey(obj);
        }

        @Override
        public Comparator comparator() {
            Comparator comparator = this.f29764a;
            if (comparator != null) {
                return comparator;
            }
            Comparator comparator2 = n().comparator();
            if (comparator2 == null) {
                comparator2 = Ordering.natural();
            }
            Ordering orderingO = o(comparator2);
            this.f29764a = orderingO;
            return orderingO;
        }

        @Override
        public NavigableSet descendingKeySet() {
            return n().navigableKeySet();
        }

        @Override
        public NavigableMap descendingMap() {
            return n();
        }

        @Override
        public Set entrySet() {
            Set set = this.f29765b;
            if (set != null) {
                return set;
            }
            Set setL = l();
            this.f29765b = setL;
            return setL;
        }

        @Override
        public Map.Entry firstEntry() {
            return n().lastEntry();
        }

        @Override
        public Object firstKey() {
            return n().lastKey();
        }

        @Override
        public Map.Entry floorEntry(Object obj) {
            return n().ceilingEntry(obj);
        }

        @Override
        public Object floorKey(Object obj) {
            return n().ceilingKey(obj);
        }

        @Override
        public NavigableMap headMap(Object obj, boolean z10) {
            return n().tailMap(obj, z10).descendingMap();
        }

        @Override
        public Map.Entry higherEntry(Object obj) {
            return n().lowerEntry(obj);
        }

        @Override
        public Object higherKey(Object obj) {
            return n().lowerKey(obj);
        }

        @Override
        public Set keySet() {
            return navigableKeySet();
        }

        Set l() {
            return new a();
        }

        @Override
        public Map.Entry lastEntry() {
            return n().firstEntry();
        }

        @Override
        public Object lastKey() {
            return n().firstKey();
        }

        @Override
        public Map.Entry lowerEntry(Object obj) {
            return n().higherEntry(obj);
        }

        @Override
        public Object lowerKey(Object obj) {
            return n().higherKey(obj);
        }

        abstract Iterator m();

        abstract NavigableMap n();

        @Override
        public NavigableSet navigableKeySet() {
            NavigableSet navigableSet = this.f29766c;
            if (navigableSet != null) {
                return navigableSet;
            }
            m mVar = new m(this);
            this.f29766c = mVar;
            return mVar;
        }

        @Override
        public Map.Entry pollFirstEntry() {
            return n().pollLastEntry();
        }

        @Override
        public Map.Entry pollLastEntry() {
            return n().pollFirstEntry();
        }

        @Override
        public NavigableMap subMap(Object obj, boolean z10, Object obj2, boolean z11) {
            return n().subMap(obj2, z11, obj, z10).descendingMap();
        }

        @Override
        public NavigableMap tailMap(Object obj, boolean z10) {
            return n().headMap(obj, z10).descendingMap();
        }

        @Override
        public String toString() {
            return standardToString();
        }

        @Override
        public Collection values() {
            return new p(this);
        }

        @Override
        public final Map l() {
            return n();
        }

        @Override
        public SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override
        public SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override
        public SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }
    }

    static abstract class i extends Sets.e {
        i() {
        }

        abstract Map a();

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
            Object key = entry.getKey();
            Object objV = Maps.v(a(), key);
            if (com.google.common.base.j.a(objV, entry.getValue())) {
                return objV != null || a().containsKey(key);
            }
            return false;
        }

        @Override
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override
        public boolean remove(Object obj) {
            if (contains(obj) && (obj instanceof Map.Entry)) {
                return a().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override
        public boolean removeAll(Collection collection) {
            try {
                return super.removeAll((Collection) com.google.common.base.m.o(collection));
            } catch (UnsupportedOperationException unused) {
                return Sets.j(this, collection.iterator());
            }
        }

        @Override
        public boolean retainAll(Collection collection) {
            try {
                return super.retainAll((Collection) com.google.common.base.m.o(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetG = Sets.g(collection.size());
                for (Object obj : collection) {
                    if (contains(obj) && (obj instanceof Map.Entry)) {
                        hashSetG.add(((Map.Entry) obj).getKey());
                    }
                }
                return a().keySet().retainAll(hashSetG);
            }
        }

        @Override
        public int size() {
            return a().size();
        }
    }

    public interface j {
        Object a(Object obj, Object obj2);
    }

    static abstract class k extends AbstractMap {

        class a extends i {
            a() {
            }

            @Override
            Map a() {
                return k.this;
            }

            @Override
            public Iterator iterator() {
                return k.this.a();
            }
        }

        k() {
        }

        abstract Iterator a();

        @Override
        public void clear() {
            Iterators.d(a());
        }

        @Override
        public Set entrySet() {
            return new a();
        }
    }

    static class l extends Sets.e {

        final Map f29769a;

        l(Map map) {
            this.f29769a = (Map) com.google.common.base.m.o(map);
        }

        Map b() {
            return this.f29769a;
        }

        @Override
        public void clear() {
            b().clear();
        }

        @Override
        public boolean contains(Object obj) {
            return b().containsKey(obj);
        }

        @Override
        public boolean isEmpty() {
            return b().isEmpty();
        }

        @Override
        public Iterator iterator() {
            return Maps.l(b().entrySet().iterator());
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            b().remove(obj);
            return true;
        }

        @Override
        public int size() {
            return b().size();
        }
    }

    static class m extends n implements NavigableSet {
        m(NavigableMap navigableMap) {
            super(navigableMap);
        }

        @Override
        public NavigableMap b() {
            return (NavigableMap) this.f29769a;
        }

        @Override
        public Object ceiling(Object obj) {
            return a().ceilingKey(obj);
        }

        @Override
        public Iterator descendingIterator() {
            return descendingSet().iterator();
        }

        @Override
        public NavigableSet descendingSet() {
            return a().descendingKeySet();
        }

        @Override
        public Object floor(Object obj) {
            return a().floorKey(obj);
        }

        @Override
        public NavigableSet headSet(Object obj, boolean z10) {
            return a().headMap(obj, z10).navigableKeySet();
        }

        @Override
        public Object higher(Object obj) {
            return a().higherKey(obj);
        }

        @Override
        public Object lower(Object obj) {
            return a().lowerKey(obj);
        }

        @Override
        public Object pollFirst() {
            return Maps.m(a().pollFirstEntry());
        }

        @Override
        public Object pollLast() {
            return Maps.m(a().pollLastEntry());
        }

        @Override
        public NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
            return a().subMap(obj, z10, obj2, z11).navigableKeySet();
        }

        @Override
        public NavigableSet tailSet(Object obj, boolean z10) {
            return a().tailMap(obj, z10).navigableKeySet();
        }

        @Override
        public SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override
        public SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override
        public SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }
    }

    static class n extends l implements SortedSet {
        n(SortedMap sortedMap) {
            super(sortedMap);
        }

        @Override
        public SortedMap b() {
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
            return new n(b().headMap(obj));
        }

        @Override
        public Object last() {
            return b().lastKey();
        }

        public SortedSet subSet(Object obj, Object obj2) {
            return new n(b().subMap(obj, obj2));
        }

        public SortedSet tailSet(Object obj) {
            return new n(b().tailMap(obj));
        }
    }

    static class o extends k {

        final Map f29770a;

        final j f29771b;

        o(Map map, j jVar) {
            this.f29770a = (Map) com.google.common.base.m.o(map);
            this.f29771b = (j) com.google.common.base.m.o(jVar);
        }

        @Override
        Iterator a() {
            return Iterators.A(this.f29770a.entrySet().iterator(), Maps.a(this.f29771b));
        }

        @Override
        public void clear() {
            this.f29770a.clear();
        }

        @Override
        public boolean containsKey(Object obj) {
            return this.f29770a.containsKey(obj);
        }

        @Override
        public Object get(Object obj) {
            Object obj2 = this.f29770a.get(obj);
            if (obj2 != null || this.f29770a.containsKey(obj)) {
                return this.f29771b.a(obj, m3.a(obj2));
            }
            return null;
        }

        @Override
        public Set keySet() {
            return this.f29770a.keySet();
        }

        @Override
        public Object remove(Object obj) {
            if (this.f29770a.containsKey(obj)) {
                return this.f29771b.a(obj, m3.a(this.f29770a.remove(obj)));
            }
            return null;
        }

        @Override
        public int size() {
            return this.f29770a.size();
        }

        @Override
        public Collection values() {
            return new p(this);
        }
    }

    static class p extends AbstractCollection {

        final Map f29772a;

        p(Map map) {
            this.f29772a = (Map) com.google.common.base.m.o(map);
        }

        final Map a() {
            return this.f29772a;
        }

        @Override
        public void clear() {
            a().clear();
        }

        @Override
        public boolean contains(Object obj) {
            return a().containsValue(obj);
        }

        @Override
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override
        public Iterator iterator() {
            return Maps.D(a().entrySet().iterator());
        }

        @Override
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry entry : a().entrySet()) {
                    if (com.google.common.base.j.a(obj, entry.getValue())) {
                        a().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override
        public boolean removeAll(Collection collection) {
            try {
                return super.removeAll((Collection) com.google.common.base.m.o(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetF = Sets.f();
                for (Map.Entry entry : a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetF.add(entry.getKey());
                    }
                }
                return a().keySet().removeAll(hashSetF);
            }
        }

        @Override
        public boolean retainAll(Collection collection) {
            try {
                return super.retainAll((Collection) com.google.common.base.m.o(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetF = Sets.f();
                for (Map.Entry entry : a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetF.add(entry.getKey());
                    }
                }
                return a().keySet().retainAll(hashSetF);
            }
        }

        @Override
        public int size() {
            return a().size();
        }
    }

    static abstract class q extends AbstractMap {

        private transient Set f29773a;

        private transient Set f29774b;

        private transient Collection f29775c;

        q() {
        }

        abstract Set a();

        Set i() {
            return new l(this);
        }

        Collection d() {
            return new p(this);
        }

        @Override
        public Set entrySet() {
            Set set = this.f29773a;
            if (set != null) {
                return set;
            }
            Set setA = a();
            this.f29773a = setA;
            return setA;
        }

        @Override
        public Set keySet() {
            Set set = this.f29774b;
            if (set != null) {
                return set;
            }
            Set setI = i();
            this.f29774b = setI;
            return setI;
        }

        @Override
        public Collection values() {
            Collection collection = this.f29775c;
            if (collection != null) {
                return collection;
            }
            Collection collectionD = d();
            this.f29775c = collectionD;
            return collectionD;
        }
    }

    public static Map A(Map map, com.google.common.base.f fVar) {
        return y(map, b(fVar));
    }

    static Map.Entry B(Map.Entry entry) {
        com.google.common.base.m.o(entry);
        return new f(entry);
    }

    static com.google.common.base.f C() {
        return EntryFunction.VALUE;
    }

    static Iterator D(Iterator it) {
        return new d(it);
    }

    static Object E(Map.Entry entry) {
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    static com.google.common.base.n F(com.google.common.base.n nVar) {
        return Predicates.e(nVar, C());
    }

    static com.google.common.base.f a(j jVar) {
        com.google.common.base.m.o(jVar);
        return new b(jVar);
    }

    static j b(com.google.common.base.f fVar) {
        com.google.common.base.m.o(fVar);
        return new g(fVar);
    }

    static Iterator c(Set set, com.google.common.base.f fVar) {
        return new e(set.iterator(), fVar);
    }

    static int d(int i10) {
        if (i10 < 3) {
            e2.b(i10, "expectedSize");
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) Math.ceil(((double) i10) / 0.75d);
        }
        return Integer.MAX_VALUE;
    }

    static boolean e(Collection collection, Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.contains(B((Map.Entry) obj));
        }
        return false;
    }

    static boolean f(Map map, Object obj) {
        return Iterators.f(l(map.entrySet().iterator()), obj);
    }

    static boolean g(Map map, Object obj) {
        return Iterators.f(D(map.entrySet().iterator()), obj);
    }

    static boolean h(Map map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public static Map.Entry i(Object obj, Object obj2) {
        return new ImmutableEntry(obj, obj2);
    }

    static ImmutableMap j(Collection collection) {
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        Iterator it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            bVar.h(it.next(), Integer.valueOf(i10));
            i10++;
        }
        return bVar.d();
    }

    static com.google.common.base.f k() {
        return EntryFunction.KEY;
    }

    static Iterator l(Iterator it) {
        return new c(it);
    }

    static Object m(Map.Entry entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    static com.google.common.base.n n(com.google.common.base.n nVar) {
        return Predicates.e(nVar, k());
    }

    public static HashMap o() {
        return new HashMap();
    }

    public static HashMap p(int i10) {
        return new HashMap(d(i10));
    }

    public static IdentityHashMap q() {
        return new IdentityHashMap();
    }

    public static LinkedHashMap r() {
        return new LinkedHashMap();
    }

    public static LinkedHashMap s(int i10) {
        return new LinkedHashMap(d(i10));
    }

    static void t(Map map, Map map2) {
        for (Map.Entry entry : map2.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
    }

    static boolean u(Map map, Object obj) {
        com.google.common.base.m.o(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    static Object v(Map map, Object obj) {
        com.google.common.base.m.o(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    static Object w(Map map, Object obj) {
        com.google.common.base.m.o(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    static String x(Map map) {
        StringBuilder sbB = f2.b(map.size());
        sbB.append('{');
        boolean z10 = true;
        for (Map.Entry entry : map.entrySet()) {
            if (!z10) {
                sbB.append(", ");
            }
            sbB.append(entry.getKey());
            sbB.append('=');
            sbB.append(entry.getValue());
            z10 = false;
        }
        sbB.append('}');
        return sbB.toString();
    }

    public static Map y(Map map, j jVar) {
        return new o(map, jVar);
    }

    static Map.Entry z(j jVar, Map.Entry entry) {
        com.google.common.base.m.o(jVar);
        com.google.common.base.m.o(entry);
        return new a(entry, jVar);
    }
}
