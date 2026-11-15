package com.google.common.collect;

import com.google.common.base.Predicates;
import defpackage.a54;
import defpackage.he8;
import defpackage.i3;
import defpackage.k71;
import defpackage.kc7;
import defpackage.o74;
import defpackage.r37;
import defpackage.xd8;
import defpackage.y6b;
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

    public enum EntryFunction implements o74 {
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

    public class a extends i3 {
        public final Map.Entry b;
        public final j c;

        public a(Map.Entry entry, j jVar) {
            this.b = entry;
            this.c = jVar;
        }

        @Override
        public Object getKey() {
            return this.b.getKey();
        }

        @Override
        public Object getValue() {
            return this.c.a(this.b.getKey(), this.b.getValue());
        }
    }

    public class b implements o74 {
        public final j b;

        public b(j jVar) {
            this.b = jVar;
        }

        @Override
        public Map.Entry apply(Map.Entry entry) {
            return Maps.z(this.b, entry);
        }
    }

    public class c extends y6b {
        public c(Iterator it) {
            super(it);
        }

        @Override
        public Object a(Map.Entry entry) {
            return entry.getKey();
        }
    }

    public class d extends y6b {
        public d(Iterator it) {
            super(it);
        }

        @Override
        public Object a(Map.Entry entry) {
            return entry.getValue();
        }
    }

    public class e extends y6b {
        public final o74 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Iterator it, o74 o74Var) {
            super(it);
            this.c = o74Var;
        }

        @Override
        public Map.Entry a(Object obj) {
            return Maps.i(obj, this.c.apply(obj));
        }
    }

    public class f extends i3 {
        public final Map.Entry b;

        public f(Map.Entry entry) {
            this.b = entry;
        }

        @Override
        public Object getKey() {
            return this.b.getKey();
        }

        @Override
        public Object getValue() {
            return this.b.getValue();
        }
    }

    public class g implements j {
        public final o74 a;

        public g(o74 o74Var) {
            this.a = o74Var;
        }

        @Override
        public Object a(Object obj, Object obj2) {
            return this.a.apply(obj2);
        }
    }

    public static abstract class h extends a54 implements NavigableMap {
        public transient Comparator b;
        public transient Set c;
        public transient NavigableSet d;

        public class a extends i {
            public a() {
            }

            @Override
            public Map b() {
                return h.this;
            }

            @Override
            public Iterator iterator() {
                return h.this.k();
            }
        }

        public static Ordering m(Comparator comparator) {
            return Ordering.from(comparator).reverse();
        }

        @Override
        public Map.Entry ceilingEntry(Object obj) {
            return l().floorEntry(obj);
        }

        @Override
        public Object ceilingKey(Object obj) {
            return l().floorKey(obj);
        }

        @Override
        public Comparator comparator() {
            Comparator comparator = this.b;
            if (comparator != null) {
                return comparator;
            }
            Comparator comparator2 = l().comparator();
            if (comparator2 == null) {
                comparator2 = Ordering.natural();
            }
            Ordering orderingM = m(comparator2);
            this.b = orderingM;
            return orderingM;
        }

        @Override
        public NavigableSet descendingKeySet() {
            return l().navigableKeySet();
        }

        @Override
        public NavigableMap descendingMap() {
            return l();
        }

        @Override
        public Set entrySet() {
            Set set = this.c;
            if (set != null) {
                return set;
            }
            Set setF = f();
            this.c = setF;
            return setF;
        }

        public Set f() {
            return new a();
        }

        @Override
        public Map.Entry firstEntry() {
            return l().lastEntry();
        }

        @Override
        public Object firstKey() {
            return l().lastKey();
        }

        @Override
        public Map.Entry floorEntry(Object obj) {
            return l().ceilingEntry(obj);
        }

        @Override
        public Object floorKey(Object obj) {
            return l().ceilingKey(obj);
        }

        @Override
        public NavigableMap headMap(Object obj, boolean z) {
            return l().tailMap(obj, z).descendingMap();
        }

        @Override
        public Map.Entry higherEntry(Object obj) {
            return l().lowerEntry(obj);
        }

        @Override
        public Object higherKey(Object obj) {
            return l().lowerKey(obj);
        }

        public abstract Iterator k();

        @Override
        public Set keySet() {
            return navigableKeySet();
        }

        public abstract NavigableMap l();

        @Override
        public Map.Entry lastEntry() {
            return l().firstEntry();
        }

        @Override
        public Object lastKey() {
            return l().firstKey();
        }

        @Override
        public Map.Entry lowerEntry(Object obj) {
            return l().higherEntry(obj);
        }

        @Override
        public Object lowerKey(Object obj) {
            return l().higherKey(obj);
        }

        @Override
        public NavigableSet navigableKeySet() {
            NavigableSet navigableSet = this.d;
            if (navigableSet != null) {
                return navigableSet;
            }
            m mVar = new m(this);
            this.d = mVar;
            return mVar;
        }

        @Override
        public Map.Entry pollFirstEntry() {
            return l().pollLastEntry();
        }

        @Override
        public Map.Entry pollLastEntry() {
            return l().pollFirstEntry();
        }

        @Override
        public NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return l().subMap(obj2, z2, obj, z).descendingMap();
        }

        @Override
        public NavigableMap tailMap(Object obj, boolean z) {
            return l().headMap(obj, z).descendingMap();
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
        public final Map f() {
            return l();
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

    public static abstract class i extends Sets.d {
        public abstract Map b();

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
            Object key = entry.getKey();
            Object objV = Maps.v(b(), key);
            if (kc7.a(objV, entry.getValue())) {
                return objV != null || b().containsKey(key);
            }
            return false;
        }

        @Override
        public boolean isEmpty() {
            return b().isEmpty();
        }

        @Override
        public boolean remove(Object obj) {
            if (contains(obj) && (obj instanceof Map.Entry)) {
                return b().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override
        public boolean removeAll(Collection collection) {
            try {
                return super.removeAll((Collection) xd8.o(collection));
            } catch (UnsupportedOperationException unused) {
                return Sets.k(this, collection.iterator());
            }
        }

        @Override
        public boolean retainAll(Collection collection) {
            try {
                return super.retainAll((Collection) xd8.o(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetH = Sets.h(collection.size());
                for (Object obj : collection) {
                    if (contains(obj) && (obj instanceof Map.Entry)) {
                        hashSetH.add(((Map.Entry) obj).getKey());
                    }
                }
                return b().keySet().retainAll(hashSetH);
            }
        }

        @Override
        public int size() {
            return b().size();
        }
    }

    public interface j {
        Object a(Object obj, Object obj2);
    }

    public static abstract class k extends AbstractMap {

        public class a extends i {
            public a() {
            }

            @Override
            public Map b() {
                return k.this;
            }

            @Override
            public Iterator iterator() {
                return k.this.a();
            }
        }

        public abstract Iterator a();

        @Override
        public void clear() {
            Iterators.d(a());
        }

        @Override
        public Set entrySet() {
            return new a();
        }
    }

    public static class l extends Sets.d {
        public final Map b;

        public l(Map map) {
            this.b = (Map) xd8.o(map);
        }

        public Map c() {
            return this.b;
        }

        @Override
        public void clear() {
            c().clear();
        }

        @Override
        public boolean contains(Object obj) {
            return c().containsKey(obj);
        }

        @Override
        public boolean isEmpty() {
            return c().isEmpty();
        }

        @Override
        public Iterator iterator() {
            return Maps.l(c().entrySet().iterator());
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            c().remove(obj);
            return true;
        }

        @Override
        public int size() {
            return c().size();
        }
    }

    public static class m extends n implements NavigableSet {
        public m(NavigableMap navigableMap) {
            super(navigableMap);
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
            return b().descendingKeySet();
        }

        @Override
        public NavigableMap c() {
            return (NavigableMap) this.b;
        }

        @Override
        public Object floor(Object obj) {
            return b().floorKey(obj);
        }

        @Override
        public NavigableSet headSet(Object obj, boolean z) {
            return b().headMap(obj, z).navigableKeySet();
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
            return Maps.m(b().pollFirstEntry());
        }

        @Override
        public Object pollLast() {
            return Maps.m(b().pollLastEntry());
        }

        @Override
        public NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return b().subMap(obj, z, obj2, z2).navigableKeySet();
        }

        @Override
        public NavigableSet tailSet(Object obj, boolean z) {
            return b().tailMap(obj, z).navigableKeySet();
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

    public static class n extends l implements SortedSet {
        public n(SortedMap sortedMap) {
            super(sortedMap);
        }

        @Override
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
            return new n(c().headMap(obj));
        }

        @Override
        public Object last() {
            return c().lastKey();
        }

        public SortedSet subSet(Object obj, Object obj2) {
            return new n(c().subMap(obj, obj2));
        }

        public SortedSet tailSet(Object obj) {
            return new n(c().tailMap(obj));
        }
    }

    public static class o extends k {
        public final Map b;
        public final j c;

        public o(Map map, j jVar) {
            this.b = (Map) xd8.o(map);
            this.c = (j) xd8.o(jVar);
        }

        @Override
        public Iterator a() {
            return Iterators.A(this.b.entrySet().iterator(), Maps.a(this.c));
        }

        @Override
        public void clear() {
            this.b.clear();
        }

        @Override
        public boolean containsKey(Object obj) {
            return this.b.containsKey(obj);
        }

        @Override
        public Object get(Object obj) {
            Object obj2 = this.b.get(obj);
            if (obj2 != null || this.b.containsKey(obj)) {
                return this.c.a(obj, r37.a(obj2));
            }
            return null;
        }

        @Override
        public Set keySet() {
            return this.b.keySet();
        }

        @Override
        public Object remove(Object obj) {
            if (this.b.containsKey(obj)) {
                return this.c.a(obj, r37.a(this.b.remove(obj)));
            }
            return null;
        }

        @Override
        public int size() {
            return this.b.size();
        }

        @Override
        public Collection values() {
            return new p(this);
        }
    }

    public static class p extends AbstractCollection {
        public final Map b;

        public p(Map map) {
            this.b = (Map) xd8.o(map);
        }

        public final Map b() {
            return this.b;
        }

        @Override
        public void clear() {
            b().clear();
        }

        @Override
        public boolean contains(Object obj) {
            return b().containsValue(obj);
        }

        @Override
        public boolean isEmpty() {
            return b().isEmpty();
        }

        @Override
        public Iterator iterator() {
            return Maps.D(b().entrySet().iterator());
        }

        @Override
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry entry : b().entrySet()) {
                    if (kc7.a(obj, entry.getValue())) {
                        b().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override
        public boolean removeAll(Collection collection) {
            try {
                return super.removeAll((Collection) xd8.o(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetG = Sets.g();
                for (Map.Entry entry : b().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetG.add(entry.getKey());
                    }
                }
                return b().keySet().removeAll(hashSetG);
            }
        }

        @Override
        public boolean retainAll(Collection collection) {
            try {
                return super.retainAll((Collection) xd8.o(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetG = Sets.g();
                for (Map.Entry entry : b().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetG.add(entry.getKey());
                    }
                }
                return b().keySet().retainAll(hashSetG);
            }
        }

        @Override
        public int size() {
            return b().size();
        }
    }

    public static abstract class q extends AbstractMap {
        public transient Set b;
        public transient Set c;
        public transient Collection d;

        public abstract Set a();

        public Set g() {
            return new l(this);
        }

        public Collection c() {
            return new p(this);
        }

        @Override
        public Set entrySet() {
            Set set = this.b;
            if (set != null) {
                return set;
            }
            Set setA = a();
            this.b = setA;
            return setA;
        }

        @Override
        public Set keySet() {
            Set set = this.c;
            if (set != null) {
                return set;
            }
            Set setG = g();
            this.c = setG;
            return setG;
        }

        @Override
        public Collection values() {
            Collection collection = this.d;
            if (collection != null) {
                return collection;
            }
            Collection collectionC = c();
            this.d = collectionC;
            return collectionC;
        }
    }

    public static Map A(Map map, o74 o74Var) {
        return y(map, b(o74Var));
    }

    public static Map.Entry B(Map.Entry entry) {
        xd8.o(entry);
        return new f(entry);
    }

    public static o74 C() {
        return EntryFunction.VALUE;
    }

    public static Iterator D(Iterator it) {
        return new d(it);
    }

    public static Object E(Map.Entry entry) {
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    public static he8 F(he8 he8Var) {
        return Predicates.e(he8Var, C());
    }

    public static o74 a(j jVar) {
        xd8.o(jVar);
        return new b(jVar);
    }

    public static j b(o74 o74Var) {
        xd8.o(o74Var);
        return new g(o74Var);
    }

    public static Iterator c(Set set, o74 o74Var) {
        return new e(set.iterator(), o74Var);
    }

    public static int d(int i2) {
        if (i2 < 3) {
            k71.b(i2, "expectedSize");
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return (int) Math.ceil(((double) i2) / 0.75d);
        }
        return Integer.MAX_VALUE;
    }

    public static boolean e(Collection collection, Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.contains(B((Map.Entry) obj));
        }
        return false;
    }

    public static boolean f(Map map, Object obj) {
        return Iterators.f(l(map.entrySet().iterator()), obj);
    }

    public static boolean g(Map map, Object obj) {
        return Iterators.f(D(map.entrySet().iterator()), obj);
    }

    public static boolean h(Map map, Object obj) {
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

    public static ImmutableMap j(Collection collection) {
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        Iterator it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            bVar.h(it.next(), Integer.valueOf(i2));
            i2++;
        }
        return bVar.d();
    }

    public static o74 k() {
        return EntryFunction.KEY;
    }

    public static Iterator l(Iterator it) {
        return new c(it);
    }

    public static Object m(Map.Entry entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    public static he8 n(he8 he8Var) {
        return Predicates.e(he8Var, k());
    }

    public static HashMap o() {
        return new HashMap();
    }

    public static HashMap p(int i2) {
        return new HashMap(d(i2));
    }

    public static IdentityHashMap q() {
        return new IdentityHashMap();
    }

    public static LinkedHashMap r() {
        return new LinkedHashMap();
    }

    public static LinkedHashMap s(int i2) {
        return new LinkedHashMap(d(i2));
    }

    public static void t(Map map, Map map2) {
        for (Map.Entry entry : map2.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
    }

    public static boolean u(Map map, Object obj) {
        xd8.o(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static Object v(Map map, Object obj) {
        xd8.o(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    public static Object w(Map map, Object obj) {
        xd8.o(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    public static String x(Map map) {
        StringBuilder sbB = com.google.common.collect.g.b(map.size());
        sbB.append('{');
        boolean z = true;
        for (Map.Entry entry : map.entrySet()) {
            if (!z) {
                sbB.append(", ");
            }
            sbB.append(entry.getKey());
            sbB.append('=');
            sbB.append(entry.getValue());
            z = false;
        }
        sbB.append('}');
        return sbB.toString();
    }

    public static Map y(Map map, j jVar) {
        return new o(map, jVar);
    }

    public static Map.Entry z(j jVar, Map.Entry entry) {
        xd8.o(jVar);
        xd8.o(entry);
        return new a(entry, jVar);
    }
}
