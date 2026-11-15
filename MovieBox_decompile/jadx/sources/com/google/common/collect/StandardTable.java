package com.google.common.collect;

import com.google.common.base.Predicates;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

class StandardTable<R, C, V> extends com.google.common.collect.i implements Serializable {
    private static final long serialVersionUID = 0;
    final Map<R, Map<C, V>> backingMap;
    private transient Set<C> columnKeySet;
    private transient StandardTable<R, C, V>.f columnMap;
    final com.google.common.base.q factory;
    private transient Map<R, Map<C, V>> rowMap;

    private class b implements Iterator {

        final Iterator f29841a;

        Map.Entry f29842b;

        Iterator f29843c;

        private b() {
            this.f29841a = StandardTable.this.backingMap.entrySet().iterator();
            this.f29843c = Iterators.j();
        }

        @Override
        public c4.a next() {
            if (!this.f29843c.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f29841a.next();
                this.f29842b = entry;
                this.f29843c = ((Map) entry.getValue()).entrySet().iterator();
            }
            Objects.requireNonNull(this.f29842b);
            Map.Entry entry2 = (Map.Entry) this.f29843c.next();
            return Tables.b(this.f29842b.getKey(), entry2.getKey(), entry2.getValue());
        }

        @Override
        public boolean hasNext() {
            return this.f29841a.hasNext() || this.f29843c.hasNext();
        }

        @Override
        public void remove() {
            this.f29843c.remove();
            Map.Entry entry = this.f29842b;
            Objects.requireNonNull(entry);
            if (((Map) entry.getValue()).isEmpty()) {
                this.f29841a.remove();
                this.f29842b = null;
            }
        }
    }

    private class c extends Maps.q {

        final Object f29845d;

        private class a extends Sets.e {
            private a() {
            }

            @Override
            public void clear() {
                c.this.e(Predicates.b());
            }

            @Override
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return StandardTable.this.a(entry.getKey(), c.this.f29845d, entry.getValue());
            }

            @Override
            public boolean isEmpty() {
                c cVar = c.this;
                return !StandardTable.this.containsColumn(cVar.f29845d);
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
                return StandardTable.this.d(entry.getKey(), c.this.f29845d, entry.getValue());
            }

            @Override
            public boolean retainAll(Collection collection) {
                return c.this.e(Predicates.i(Predicates.g(collection)));
            }

            @Override
            public int size() {
                Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    if (it.next().containsKey(c.this.f29845d)) {
                        i10++;
                    }
                }
                return i10;
            }
        }

        private class b extends AbstractIterator {

            final Iterator f29848c;

            class a extends com.google.common.collect.b {

                final Map.Entry f29850a;

                final b f29851b;

                a(b bVar, Map.Entry entry) {
                    this.f29850a = entry;
                    this.f29851b = bVar;
                }

                @Override
                public Object getKey() {
                    return this.f29850a.getKey();
                }

                @Override
                public Object getValue() {
                    return ((Map) this.f29850a.getValue()).get(c.this.f29845d);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public Object setValue(Object obj) {
                    return m3.a(((Map) this.f29850a.getValue()).put(c.this.f29845d, com.google.common.base.m.o(obj)));
                }
            }

            private b() {
                this.f29848c = StandardTable.this.backingMap.entrySet().iterator();
            }

            @Override
            public Map.Entry a() {
                while (this.f29848c.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f29848c.next();
                    if (((Map) entry.getValue()).containsKey(c.this.f29845d)) {
                        return new a(this, entry);
                    }
                }
                return (Map.Entry) b();
            }
        }

        private class C0384c extends Maps.l {
            C0384c() {
                super(c.this);
            }

            @Override
            public boolean contains(Object obj) {
                c cVar = c.this;
                return StandardTable.this.contains(obj, cVar.f29845d);
            }

            @Override
            public boolean remove(Object obj) {
                c cVar = c.this;
                return StandardTable.this.remove(obj, cVar.f29845d) != null;
            }

            @Override
            public boolean retainAll(Collection collection) {
                return c.this.e(Maps.n(Predicates.i(Predicates.g(collection))));
            }
        }

        private class d extends Maps.p {
            d() {
                super(c.this);
            }

            @Override
            public boolean remove(Object obj) {
                return obj != null && c.this.e(Maps.F(Predicates.f(obj)));
            }

            @Override
            public boolean removeAll(Collection collection) {
                return c.this.e(Maps.F(Predicates.g(collection)));
            }

            @Override
            public boolean retainAll(Collection collection) {
                return c.this.e(Maps.F(Predicates.i(Predicates.g(collection))));
            }
        }

        c(Object obj) {
            this.f29845d = com.google.common.base.m.o(obj);
        }

        @Override
        Set a() {
            return new a();
        }

        @Override
        Set i() {
            return new C0384c();
        }

        @Override
        public boolean containsKey(Object obj) {
            return StandardTable.this.contains(obj, this.f29845d);
        }

        @Override
        Collection d() {
            return new d();
        }

        boolean e(com.google.common.base.n nVar) {
            Iterator<Map.Entry<R, Map<C, V>>> it = StandardTable.this.backingMap.entrySet().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map.Entry<R, Map<C, V>> next = it.next();
                Map<C, V> value = next.getValue();
                V v10 = value.get(this.f29845d);
                if (v10 != null && nVar.apply(Maps.i(next.getKey(), v10))) {
                    value.remove(this.f29845d);
                    if (value.isEmpty()) {
                        it.remove();
                    }
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public Object get(Object obj) {
            return StandardTable.this.get(obj, this.f29845d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object put(Object obj, Object obj2) {
            return StandardTable.this.put(obj, this.f29845d, obj2);
        }

        @Override
        public Object remove(Object obj) {
            return StandardTable.this.remove(obj, this.f29845d);
        }
    }

    private class d extends AbstractIterator {

        final Map f29854c;

        final Iterator f29855d;

        Iterator f29856e;

        private d() {
            this.f29854c = (Map) StandardTable.this.factory.get();
            this.f29855d = StandardTable.this.backingMap.values().iterator();
            this.f29856e = Iterators.h();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        protected Object a() {
            while (true) {
                if (this.f29856e.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f29856e.next();
                    if (!this.f29854c.containsKey(entry.getKey())) {
                        this.f29854c.put(entry.getKey(), entry.getValue());
                        return entry.getKey();
                    }
                } else {
                    if (!this.f29855d.hasNext()) {
                        return b();
                    }
                    this.f29856e = ((Map) this.f29855d.next()).entrySet().iterator();
                }
            }
        }
    }

    private class e extends i {
        private e() {
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
            boolean z10 = false;
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
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean removeAll(Collection collection) {
            com.google.common.base.m.o(collection);
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (Iterators.u(next.keySet().iterator(), collection)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection collection) {
            com.google.common.base.m.o(collection);
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().retainAll(collection)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return Iterators.y(iterator());
        }
    }

    private class f extends Maps.q {

        private final class a extends i {

            class C0385a implements com.google.common.base.f {
                C0385a() {
                }

                @Override
                public Map apply(Object obj) {
                    return StandardTable.this.column(obj);
                }
            }

            private a() {
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
                return Maps.c(StandardTable.this.columnKeySet(), new C0385a());
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
                com.google.common.base.m.o(collection);
                return Sets.j(this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean retainAll(Collection collection) {
                com.google.common.base.m.o(collection);
                boolean z10 = false;
                for (Object obj : Lists.k(StandardTable.this.columnKeySet().iterator())) {
                    if (!collection.contains(Maps.i(obj, StandardTable.this.column(obj)))) {
                        StandardTable.this.c(obj);
                        z10 = true;
                    }
                }
                return z10;
            }

            @Override
            public int size() {
                return StandardTable.this.columnKeySet().size();
            }
        }

        private class b extends Maps.p {
            b() {
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
                com.google.common.base.m.o(collection);
                boolean z10 = false;
                for (Object obj : Lists.k(StandardTable.this.columnKeySet().iterator())) {
                    if (collection.contains(StandardTable.this.column(obj))) {
                        StandardTable.this.c(obj);
                        z10 = true;
                    }
                }
                return z10;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean retainAll(Collection collection) {
                com.google.common.base.m.o(collection);
                boolean z10 = false;
                for (Object obj : Lists.k(StandardTable.this.columnKeySet().iterator())) {
                    if (!collection.contains(StandardTable.this.column(obj))) {
                        StandardTable.this.c(obj);
                        z10 = true;
                    }
                }
                return z10;
            }
        }

        private f() {
        }

        @Override
        public Set a() {
            return new a();
        }

        @Override
        public boolean containsKey(Object obj) {
            return StandardTable.this.containsColumn(obj);
        }

        @Override
        Collection d() {
            return new b();
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

    class g extends Maps.k {

        final Object f29863a;

        Map f29864b;

        class a implements Iterator {

            final Iterator f29866a;

            final g f29867b;

            a(g gVar, Iterator it) {
                this.f29866a = it;
                this.f29867b = gVar;
            }

            @Override
            public Map.Entry next() {
                return this.f29867b.f((Map.Entry) this.f29866a.next());
            }

            @Override
            public boolean hasNext() {
                return this.f29866a.hasNext();
            }

            @Override
            public void remove() {
                this.f29866a.remove();
                this.f29867b.d();
            }
        }

        class b extends o2 {

            final Map.Entry f29868a;

            final g f29869b;

            b(g gVar, Map.Entry entry) {
                this.f29868a = entry;
                this.f29869b = gVar;
            }

            @Override
            public boolean equals(Object obj) {
                return standardEquals(obj);
            }

            @Override
            public Map.Entry l() {
                return this.f29868a;
            }

            @Override
            public Object setValue(Object obj) {
                return super.setValue(com.google.common.base.m.o(obj));
            }
        }

        g(Object obj) {
            this.f29863a = com.google.common.base.m.o(obj);
        }

        @Override
        Iterator a() {
            e();
            Map map = this.f29864b;
            return map == null ? Iterators.j() : new a(this, map.entrySet().iterator());
        }

        Map c() {
            return StandardTable.this.backingMap.get(this.f29863a);
        }

        @Override
        public void clear() {
            e();
            Map map = this.f29864b;
            if (map != null) {
                map.clear();
            }
            d();
        }

        @Override
        public boolean containsKey(Object obj) {
            Map map;
            e();
            return (obj == null || (map = this.f29864b) == null || !Maps.u(map, obj)) ? false : true;
        }

        void d() {
            e();
            Map map = this.f29864b;
            if (map == null || !map.isEmpty()) {
                return;
            }
            StandardTable.this.backingMap.remove(this.f29863a);
            this.f29864b = null;
        }

        final void e() {
            Map map = this.f29864b;
            if (map == null || (map.isEmpty() && StandardTable.this.backingMap.containsKey(this.f29863a))) {
                this.f29864b = c();
            }
        }

        Map.Entry f(Map.Entry entry) {
            return new b(this, entry);
        }

        @Override
        public Object get(Object obj) {
            Map map;
            e();
            if (obj == null || (map = this.f29864b) == null) {
                return null;
            }
            return Maps.v(map, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object put(Object obj, Object obj2) {
            com.google.common.base.m.o(obj);
            com.google.common.base.m.o(obj2);
            Map map = this.f29864b;
            return (map == null || map.isEmpty()) ? StandardTable.this.put(this.f29863a, obj, obj2) : this.f29864b.put(obj, obj2);
        }

        @Override
        public Object remove(Object obj) {
            e();
            Map map = this.f29864b;
            if (map == null) {
                return null;
            }
            Object objW = Maps.w(map, obj);
            d();
            return objW;
        }

        @Override
        public int size() {
            e();
            Map map = this.f29864b;
            if (map == null) {
                return 0;
            }
            return map.size();
        }
    }

    class h extends Maps.q {

        private final class a extends i {

            class C0386a implements com.google.common.base.f {
                C0386a() {
                }

                @Override
                public Map apply(Object obj) {
                    return StandardTable.this.row(obj);
                }
            }

            private a() {
                super();
            }

            @Override
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && f2.c(StandardTable.this.backingMap.entrySet(), entry);
            }

            @Override
            public Iterator iterator() {
                return Maps.c(StandardTable.this.backingMap.keySet(), new C0386a());
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

        h() {
        }

        @Override
        protected Set a() {
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

    private abstract class i extends Sets.e {
        private i() {
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

    StandardTable(Map<R, Map<C, V>> map, com.google.common.base.q qVar) {
        this.backingMap = map;
        this.factory = qVar;
    }

    public boolean a(Object obj, Object obj2, Object obj3) {
        return obj3 != null && obj3.equals(get(obj, obj2));
    }

    private Map b(Object obj) {
        Map<C, V> map = this.backingMap.get(obj);
        if (map != null) {
            return map;
        }
        Map<C, V> map2 = (Map) this.factory.get();
        this.backingMap.put(obj, map2);
        return map2;
    }

    public Map c(Object obj) {
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

    public boolean d(Object obj, Object obj2, Object obj3) {
        if (!a(obj, obj2, obj3)) {
            return false;
        }
        remove(obj, obj2);
        return true;
    }

    @Override
    Iterator<c4.a> cellIterator() {
        return new b();
    }

    @Override
    public Set<c4.a> cellSet() {
        return super.cellSet();
    }

    @Override
    public void clear() {
        this.backingMap.clear();
    }

    public Map<R, V> column(C c10) {
        return new c(c10);
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

    Iterator<C> createColumnKeyIterator() {
        return new d();
    }

    Map<R, Map<C, V>> createRowMap() {
        return new h();
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
    public V put(R r10, C c10, V v10) {
        com.google.common.base.m.o(r10);
        com.google.common.base.m.o(c10);
        com.google.common.base.m.o(v10);
        return (V) b(r10).put(c10, v10);
    }

    public V remove(Object obj, Object obj2) {
        Map map;
        if (obj == null || obj2 == null || (map = (Map) Maps.v(this.backingMap, obj)) == null) {
            return null;
        }
        V v10 = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.backingMap.remove(obj);
        }
        return v10;
    }

    public Map<C, V> row(R r10) {
        return new g(r10);
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
