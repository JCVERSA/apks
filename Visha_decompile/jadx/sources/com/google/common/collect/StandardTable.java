package com.google.common.collect;

import com.google.common.base.Predicates;
import defpackage.b54;
import defpackage.he8;
import defpackage.i3;
import defpackage.o74;
import defpackage.r37;
import defpackage.w6a;
import defpackage.xd8;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

class StandardTable<R, C, V> extends com.google.common.collect.e implements Serializable {
    private static final long serialVersionUID = 0;
    final Map<R, Map<C, V>> backingMap;
    private transient Set<C> columnKeySet;
    private transient StandardTable<R, C, V>.f columnMap;
    final w6a factory;
    private transient Map<R, Map<C, V>> rowMap;

    public class b implements Iterator {
        public final Iterator b;
        public Map.Entry c;
        public Iterator d;

        public b() {
            this.b = StandardTable.this.backingMap.entrySet().iterator();
            this.d = Iterators.j();
        }

        @Override
        public r.a next() {
            if (!this.d.hasNext()) {
                Map.Entry entry = (Map.Entry) this.b.next();
                this.c = entry;
                this.d = ((Map) entry.getValue()).entrySet().iterator();
            }
            Objects.requireNonNull(this.c);
            Map.Entry entry2 = (Map.Entry) this.d.next();
            return Tables.b(this.c.getKey(), entry2.getKey(), entry2.getValue());
        }

        @Override
        public boolean hasNext() {
            return this.b.hasNext() || this.d.hasNext();
        }

        @Override
        public void remove() {
            this.d.remove();
            Map.Entry entry = this.c;
            Objects.requireNonNull(entry);
            if (((Map) entry.getValue()).isEmpty()) {
                this.b.remove();
                this.c = null;
            }
        }
    }

    public class c extends Maps.q {
        public final Object e;

        public class a extends Sets.d {
            public a() {
            }

            @Override
            public void clear() {
                c.this.d(Predicates.b());
            }

            @Override
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return StandardTable.this.a(entry.getKey(), c.this.e, entry.getValue());
            }

            @Override
            public boolean isEmpty() {
                c cVar = c.this;
                return !StandardTable.this.containsColumn(cVar.e);
            }

            @Override
            public Iterator iterator() {
                return new b();
            }

            @Override
            public boolean remove(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return StandardTable.this.d(entry.getKey(), c.this.e, entry.getValue());
            }

            @Override
            public boolean retainAll(Collection collection) {
                return c.this.d(Predicates.i(Predicates.g(collection)));
            }

            @Override
            public int size() {
                Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (it.next().containsKey(c.this.e)) {
                        i++;
                    }
                }
                return i;
            }
        }

        public class b extends AbstractIterator {
            public final Iterator d;

            public class a extends i3 {
                public final Map.Entry b;
                public final b c;

                public a(b bVar, Map.Entry entry) {
                    this.b = entry;
                    this.c = bVar;
                }

                @Override
                public Object getKey() {
                    return this.b.getKey();
                }

                @Override
                public Object getValue() {
                    return ((Map) this.b.getValue()).get(c.this.e);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public Object setValue(Object obj) {
                    return r37.a(((Map) this.b.getValue()).put(c.this.e, xd8.o(obj)));
                }
            }

            public b() {
                this.d = StandardTable.this.backingMap.entrySet().iterator();
            }

            @Override
            public Map.Entry a() {
                while (this.d.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.d.next();
                    if (((Map) entry.getValue()).containsKey(c.this.e)) {
                        return new a(this, entry);
                    }
                }
                return (Map.Entry) b();
            }
        }

        public class C0101c extends Maps.l {
            public C0101c() {
                super(c.this);
            }

            @Override
            public boolean contains(Object obj) {
                c cVar = c.this;
                return StandardTable.this.contains(obj, cVar.e);
            }

            @Override
            public boolean remove(Object obj) {
                c cVar = c.this;
                return StandardTable.this.remove(obj, cVar.e) != null;
            }

            @Override
            public boolean retainAll(Collection collection) {
                return c.this.d(Maps.n(Predicates.i(Predicates.g(collection))));
            }
        }

        public class d extends Maps.p {
            public d() {
                super(c.this);
            }

            @Override
            public boolean remove(Object obj) {
                return obj != null && c.this.d(Maps.F(Predicates.f(obj)));
            }

            @Override
            public boolean removeAll(Collection collection) {
                return c.this.d(Maps.F(Predicates.g(collection)));
            }

            @Override
            public boolean retainAll(Collection collection) {
                return c.this.d(Maps.F(Predicates.i(Predicates.g(collection))));
            }
        }

        public c(Object obj) {
            this.e = xd8.o(obj);
        }

        @Override
        public Set a() {
            return new a();
        }

        @Override
        public Set g() {
            return new C0101c();
        }

        @Override
        public Collection c() {
            return new d();
        }

        @Override
        public boolean containsKey(Object obj) {
            return StandardTable.this.contains(obj, this.e);
        }

        public boolean d(he8 he8Var) {
            Iterator<Map.Entry<R, Map<C, V>>> it = StandardTable.this.backingMap.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<R, Map<C, V>> next = it.next();
                Map<C, V> value = next.getValue();
                V v = value.get(this.e);
                if (v != null && he8Var.apply(Maps.i(next.getKey(), v))) {
                    value.remove(this.e);
                    if (value.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override
        public Object get(Object obj) {
            return StandardTable.this.get(obj, this.e);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object put(Object obj, Object obj2) {
            return StandardTable.this.put(obj, this.e, obj2);
        }

        @Override
        public Object remove(Object obj) {
            return StandardTable.this.remove(obj, this.e);
        }
    }

    public class d extends AbstractIterator {
        public final Map d;
        public final Iterator e;
        public Iterator f;

        public d() {
            this.d = (Map) StandardTable.this.factory.get();
            this.e = StandardTable.this.backingMap.values().iterator();
            this.f = Iterators.h();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object a() {
            while (true) {
                if (this.f.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f.next();
                    if (!this.d.containsKey(entry.getKey())) {
                        this.d.put(entry.getKey(), entry.getValue());
                        return entry.getKey();
                    }
                } else {
                    if (!this.e.hasNext()) {
                        return b();
                    }
                    this.f = ((Map) this.e.next()).entrySet().iterator();
                }
            }
        }
    }

    public class e extends i {
        public e() {
            super();
        }

        @Override
        public boolean contains(Object obj) {
            return StandardTable.this.containsColumn(obj);
        }

        @Override
        public Iterator iterator() {
            return StandardTable.this.createColumnKeyIterator();
        }

        @Override
        public boolean remove(Object obj) {
            boolean z = false;
            if (obj == null) {
                return false;
            }
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().remove(obj)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override
        public boolean removeAll(Collection collection) {
            xd8.o(collection);
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (Iterators.u(next.keySet().iterator(), collection)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override
        public boolean retainAll(Collection collection) {
            xd8.o(collection);
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().retainAll(collection)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override
        public int size() {
            return Iterators.y(iterator());
        }
    }

    public class f extends Maps.q {

        public final class a extends i {

            public class C0102a implements o74 {
                public C0102a() {
                }

                @Override
                public Map apply(Object obj) {
                    return StandardTable.this.column(obj);
                }
            }

            public a() {
                super();
            }

            @Override
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                if (!StandardTable.this.containsColumn(entry.getKey())) {
                    return false;
                }
                Map map = f.this.get(entry.getKey());
                Objects.requireNonNull(map);
                return map.equals(entry.getValue());
            }

            @Override
            public Iterator iterator() {
                return Maps.c(StandardTable.this.columnKeySet(), new C0102a());
            }

            @Override
            public boolean remove(Object obj) {
                if (!contains(obj) || !(obj instanceof Map.Entry)) {
                    return false;
                }
                StandardTable.this.c(((Map.Entry) obj).getKey());
                return true;
            }

            @Override
            public boolean removeAll(Collection collection) {
                xd8.o(collection);
                return Sets.k(this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean retainAll(Collection collection) {
                xd8.o(collection);
                boolean z = false;
                for (Object obj : Lists.k(StandardTable.this.columnKeySet().iterator())) {
                    if (!collection.contains(Maps.i(obj, StandardTable.this.column(obj)))) {
                        StandardTable.this.c(obj);
                        z = true;
                    }
                }
                return z;
            }

            @Override
            public int size() {
                return StandardTable.this.columnKeySet().size();
            }
        }

        public class b extends Maps.p {
            public b() {
                super(f.this);
            }

            @Override
            public boolean remove(Object obj) {
                for (Map.Entry entry : f.this.entrySet()) {
                    if (((Map) entry.getValue()).equals(obj)) {
                        StandardTable.this.c(entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean removeAll(Collection collection) {
                xd8.o(collection);
                boolean z = false;
                for (Object obj : Lists.k(StandardTable.this.columnKeySet().iterator())) {
                    if (collection.contains(StandardTable.this.column(obj))) {
                        StandardTable.this.c(obj);
                        z = true;
                    }
                }
                return z;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean retainAll(Collection collection) {
                xd8.o(collection);
                boolean z = false;
                for (Object obj : Lists.k(StandardTable.this.columnKeySet().iterator())) {
                    if (!collection.contains(StandardTable.this.column(obj))) {
                        StandardTable.this.c(obj);
                        z = true;
                    }
                }
                return z;
            }
        }

        public f() {
        }

        @Override
        public Set a() {
            return new a();
        }

        @Override
        public Collection c() {
            return new b();
        }

        @Override
        public boolean containsKey(Object obj) {
            return StandardTable.this.containsColumn(obj);
        }

        @Override
        public Map get(Object obj) {
            if (!StandardTable.this.containsColumn(obj)) {
                return null;
            }
            StandardTable standardTable = StandardTable.this;
            Objects.requireNonNull(obj);
            return standardTable.column(obj);
        }

        @Override
        public Map remove(Object obj) {
            if (StandardTable.this.containsColumn(obj)) {
                return StandardTable.this.c(obj);
            }
            return null;
        }

        @Override
        public Set keySet() {
            return StandardTable.this.columnKeySet();
        }
    }

    public class g extends Maps.k {
        public final Object b;
        public Map c;

        public class a implements Iterator {
            public final Iterator b;
            public final g c;

            public a(g gVar, Iterator it) {
                this.b = it;
                this.c = gVar;
            }

            @Override
            public Map.Entry next() {
                return this.c.e((Map.Entry) this.b.next());
            }

            @Override
            public boolean hasNext() {
                return this.b.hasNext();
            }

            @Override
            public void remove() {
                this.b.remove();
                this.c.c();
            }
        }

        public class b extends b54 {
            public final Map.Entry b;
            public final g c;

            public b(g gVar, Map.Entry entry) {
                this.b = entry;
                this.c = gVar;
            }

            @Override
            public boolean equals(Object obj) {
                return standardEquals(obj);
            }

            @Override
            public Map.Entry f() {
                return this.b;
            }

            @Override
            public Object setValue(Object obj) {
                return super.setValue(xd8.o(obj));
            }
        }

        public g(Object obj) {
            this.b = xd8.o(obj);
        }

        @Override
        public Iterator a() {
            d();
            Map map = this.c;
            return map == null ? Iterators.j() : new a(this, map.entrySet().iterator());
        }

        public Map b() {
            return StandardTable.this.backingMap.get(this.b);
        }

        public void c() {
            d();
            Map map = this.c;
            if (map == null || !map.isEmpty()) {
                return;
            }
            StandardTable.this.backingMap.remove(this.b);
            this.c = null;
        }

        @Override
        public void clear() {
            d();
            Map map = this.c;
            if (map != null) {
                map.clear();
            }
            c();
        }

        @Override
        public boolean containsKey(Object obj) {
            Map map;
            d();
            return (obj == null || (map = this.c) == null || !Maps.u(map, obj)) ? false : true;
        }

        public final void d() {
            Map map = this.c;
            if (map == null || (map.isEmpty() && StandardTable.this.backingMap.containsKey(this.b))) {
                this.c = b();
            }
        }

        public Map.Entry e(Map.Entry entry) {
            return new b(this, entry);
        }

        @Override
        public Object get(Object obj) {
            Map map;
            d();
            if (obj == null || (map = this.c) == null) {
                return null;
            }
            return Maps.v(map, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object put(Object obj, Object obj2) {
            xd8.o(obj);
            xd8.o(obj2);
            Map map = this.c;
            return (map == null || map.isEmpty()) ? StandardTable.this.put(this.b, obj, obj2) : this.c.put(obj, obj2);
        }

        @Override
        public Object remove(Object obj) {
            d();
            Map map = this.c;
            if (map == null) {
                return null;
            }
            Object objW = Maps.w(map, obj);
            c();
            return objW;
        }

        @Override
        public int size() {
            d();
            Map map = this.c;
            if (map == null) {
                return 0;
            }
            return map.size();
        }
    }

    public class h extends Maps.q {

        public final class a extends i {

            public class C0103a implements o74 {
                public C0103a() {
                }

                @Override
                public Map apply(Object obj) {
                    return StandardTable.this.row(obj);
                }
            }

            public a() {
                super();
            }

            @Override
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && com.google.common.collect.g.c(StandardTable.this.backingMap.entrySet(), entry);
            }

            @Override
            public Iterator iterator() {
                return Maps.c(StandardTable.this.backingMap.keySet(), new C0103a());
            }

            @Override
            public boolean remove(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && StandardTable.this.backingMap.entrySet().remove(entry);
            }

            @Override
            public int size() {
                return StandardTable.this.backingMap.size();
            }
        }

        public h() {
        }

        @Override
        public Set a() {
            return new a();
        }

        @Override
        public boolean containsKey(Object obj) {
            return StandardTable.this.containsRow(obj);
        }

        @Override
        public Map get(Object obj) {
            if (!StandardTable.this.containsRow(obj)) {
                return null;
            }
            StandardTable standardTable = StandardTable.this;
            Objects.requireNonNull(obj);
            return standardTable.row(obj);
        }

        @Override
        public Map remove(Object obj) {
            if (obj == null) {
                return null;
            }
            return StandardTable.this.backingMap.remove(obj);
        }
    }

    public abstract class i extends Sets.d {
        public i() {
        }

        @Override
        public void clear() {
            StandardTable.this.backingMap.clear();
        }

        @Override
        public boolean isEmpty() {
            return StandardTable.this.backingMap.isEmpty();
        }
    }

    public StandardTable(Map<R, Map<C, V>> map, w6a w6aVar) {
        this.backingMap = map;
        this.factory = w6aVar;
    }

    public final boolean a(Object obj, Object obj2, Object obj3) {
        return obj3 != null && obj3.equals(get(obj, obj2));
    }

    public final Map b(Object obj) {
        Map<C, V> map = this.backingMap.get(obj);
        if (map != null) {
            return map;
        }
        Map<C, V> map2 = (Map) this.factory.get();
        this.backingMap.put(obj, map2);
        return map2;
    }

    public final Map c(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<R, Map<C, V>>> it = this.backingMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<R, Map<C, V>> next = it.next();
            V vRemove = next.getValue().remove(obj);
            if (vRemove != null) {
                linkedHashMap.put(next.getKey(), vRemove);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        return linkedHashMap;
    }

    @Override
    public Iterator<r.a> cellIterator() {
        return new b();
    }

    @Override
    public Set<r.a> cellSet() {
        return super.cellSet();
    }

    @Override
    public void clear() {
        this.backingMap.clear();
    }

    public Map<R, V> column(C c2) {
        return new c(c2);
    }

    @Override
    public Set<C> columnKeySet() {
        Set<C> set = this.columnKeySet;
        if (set != null) {
            return set;
        }
        e eVar = new e();
        this.columnKeySet = eVar;
        return eVar;
    }

    @Override
    public Map<C, Map<R, V>> columnMap() {
        StandardTable<R, C, V>.f fVar = this.columnMap;
        if (fVar != null) {
            return fVar;
        }
        StandardTable<R, C, V>.f fVar2 = new f();
        this.columnMap = fVar2;
        return fVar2;
    }

    @Override
    public boolean contains(Object obj, Object obj2) {
        return (obj == null || obj2 == null || !super.contains(obj, obj2)) ? false : true;
    }

    @Override
    public boolean containsColumn(Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator<Map<C, V>> it = this.backingMap.values().iterator();
        while (it.hasNext()) {
            if (Maps.u(it.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean containsRow(Object obj) {
        return obj != null && Maps.u(this.backingMap, obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return obj != null && super.containsValue(obj);
    }

    public Iterator<C> createColumnKeyIterator() {
        return new d();
    }

    public Map<R, Map<C, V>> createRowMap() {
        return new h();
    }

    public final boolean d(Object obj, Object obj2, Object obj3) {
        if (!a(obj, obj2, obj3)) {
            return false;
        }
        remove(obj, obj2);
        return true;
    }

    @Override
    public V get(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        return (V) super.get(obj, obj2);
    }

    @Override
    public boolean isEmpty() {
        return this.backingMap.isEmpty();
    }

    @Override
    public V put(R r, C c2, V v) {
        xd8.o(r);
        xd8.o(c2);
        xd8.o(v);
        return (V) b(r).put(c2, v);
    }

    public V remove(Object obj, Object obj2) {
        Map map;
        if (obj == null || obj2 == null || (map = (Map) Maps.v(this.backingMap, obj)) == null) {
            return null;
        }
        V v = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.backingMap.remove(obj);
        }
        return v;
    }

    public Map<C, V> row(R r) {
        return new g(r);
    }

    @Override
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override
    public Map<R, Map<C, V>> rowMap() {
        Map<R, Map<C, V>> map = this.rowMap;
        if (map != null) {
            return map;
        }
        Map<R, Map<C, V>> mapCreateRowMap = createRowMap();
        this.rowMap = mapCreateRowMap;
        return mapCreateRowMap;
    }

    @Override
    public int size() {
        Iterator<Map<C, V>> it = this.backingMap.values().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }
}
