package com.google.common.collect;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ArrayTable<R, C, V> extends i implements Serializable {
    private static final long serialVersionUID = 0;
    private final V[][] array;
    private final ImmutableMap<C, Integer> columnKeyToIndex;
    private final ImmutableList<C> columnList;
    private transient ArrayTable<R, C, V>.f columnMap;
    private final ImmutableMap<R, Integer> rowKeyToIndex;
    private final ImmutableList<R> rowList;
    private transient ArrayTable<R, C, V>.h rowMap;

    class a extends com.google.common.collect.a {
        a(int i10) {
            super(i10);
        }

        @Override
        public c4.a a(int i10) {
            return ArrayTable.this.getCell(i10);
        }
    }

    class b extends Tables.b {

        final int f29488a;

        final int f29489b;

        final int f29490c;

        final ArrayTable f29491d;

        b(ArrayTable arrayTable, int i10) {
            this.f29490c = i10;
            this.f29491d = arrayTable;
            this.f29488a = i10 / arrayTable.columnList.size();
            this.f29489b = i10 % arrayTable.columnList.size();
        }

        @Override
        public Object getColumnKey() {
            return this.f29491d.columnList.get(this.f29489b);
        }

        @Override
        public Object getRowKey() {
            return this.f29491d.rowList.get(this.f29488a);
        }

        @Override
        public Object getValue() {
            return this.f29491d.at(this.f29488a, this.f29489b);
        }
    }

    class c extends com.google.common.collect.a {
        c(int i10) {
            super(i10);
        }

        @Override
        protected Object a(int i10) {
            return ArrayTable.this.getValue(i10);
        }
    }

    private static abstract class d extends Maps.k {

        private final ImmutableMap f29493a;

        class a extends com.google.common.collect.b {

            final int f29494a;

            final d f29495b;

            a(d dVar, int i10) {
                this.f29494a = i10;
                this.f29495b = dVar;
            }

            @Override
            public Object getKey() {
                return this.f29495b.d(this.f29494a);
            }

            @Override
            public Object getValue() {
                return this.f29495b.f(this.f29494a);
            }

            @Override
            public Object setValue(Object obj) {
                return this.f29495b.h(this.f29494a, obj);
            }
        }

        class b extends com.google.common.collect.a {
            b(int i10) {
                super(i10);
            }

            @Override
            public Map.Entry a(int i10) {
                return d.this.c(i10);
            }
        }

        d(ImmutableMap immutableMap, a aVar) {
            this(immutableMap);
        }

        @Override
        Iterator a() {
            return new b(size());
        }

        Map.Entry c(int i10) {
            com.google.common.base.m.m(i10, size());
            return new a(this, i10);
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean containsKey(Object obj) {
            return this.f29493a.containsKey(obj);
        }

        Object d(int i10) {
            return this.f29493a.keySet().asList().get(i10);
        }

        abstract String e();

        abstract Object f(int i10);

        @Override
        public Object get(Object obj) {
            Integer num = (Integer) this.f29493a.get(obj);
            if (num == null) {
                return null;
            }
            return f(num.intValue());
        }

        abstract Object h(int i10, Object obj);

        @Override
        public boolean isEmpty() {
            return this.f29493a.isEmpty();
        }

        @Override
        public Set keySet() {
            return this.f29493a.keySet();
        }

        @Override
        public Object put(Object obj, Object obj2) {
            Integer num = (Integer) this.f29493a.get(obj);
            if (num != null) {
                return h(num.intValue(), obj2);
            }
            throw new IllegalArgumentException(e() + " " + obj + " not in " + this.f29493a.keySet());
        }

        @Override
        public Object remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int size() {
            return this.f29493a.size();
        }

        private d(ImmutableMap immutableMap) {
            this.f29493a = immutableMap;
        }
    }

    private class e extends d {

        final int f29497b;

        e(int i10) {
            super(ArrayTable.this.rowKeyToIndex, null);
            this.f29497b = i10;
        }

        @Override
        String e() {
            return "Row";
        }

        @Override
        Object f(int i10) {
            return ArrayTable.this.at(i10, this.f29497b);
        }

        @Override
        Object h(int i10, Object obj) {
            return ArrayTable.this.set(i10, this.f29497b, obj);
        }
    }

    private class f extends d {
        f(ArrayTable arrayTable, a aVar) {
            this();
        }

        @Override
        String e() {
            return "Column";
        }

        @Override
        public Map f(int i10) {
            return new e(i10);
        }

        @Override
        public Map put(Object obj, Map map) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map h(int i10, Map map) {
            throw new UnsupportedOperationException();
        }

        private f() {
            super(ArrayTable.this.columnKeyToIndex, null);
        }
    }

    private class g extends d {

        final int f29500b;

        g(int i10) {
            super(ArrayTable.this.columnKeyToIndex, null);
            this.f29500b = i10;
        }

        @Override
        String e() {
            return "Column";
        }

        @Override
        Object f(int i10) {
            return ArrayTable.this.at(this.f29500b, i10);
        }

        @Override
        Object h(int i10, Object obj) {
            return ArrayTable.this.set(this.f29500b, i10, obj);
        }
    }

    private class h extends d {
        h(ArrayTable arrayTable, a aVar) {
            this();
        }

        @Override
        String e() {
            return "Row";
        }

        @Override
        public Map f(int i10) {
            return new g(i10);
        }

        @Override
        public Map put(Object obj, Map map) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map h(int i10, Map map) {
            throw new UnsupportedOperationException();
        }

        private h() {
            super(ArrayTable.this.rowKeyToIndex, null);
        }
    }

    private ArrayTable(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        ImmutableList<R> immutableListCopyOf = ImmutableList.copyOf(iterable);
        this.rowList = immutableListCopyOf;
        ImmutableList<C> immutableListCopyOf2 = ImmutableList.copyOf(iterable2);
        this.columnList = immutableListCopyOf2;
        com.google.common.base.m.d(immutableListCopyOf.isEmpty() == immutableListCopyOf2.isEmpty());
        this.rowKeyToIndex = Maps.j(immutableListCopyOf);
        this.columnKeyToIndex = Maps.j(immutableListCopyOf2);
        this.array = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, immutableListCopyOf.size(), immutableListCopyOf2.size()));
        eraseAll();
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        return new ArrayTable<>(iterable, iterable2);
    }

    public c4.a getCell(int i10) {
        return new b(this, i10);
    }

    public V getValue(int i10) {
        return at(i10 / this.columnList.size(), i10 % this.columnList.size());
    }

    public V at(int i10, int i11) {
        com.google.common.base.m.m(i10, this.rowList.size());
        com.google.common.base.m.m(i11, this.columnList.size());
        return this.array[i10][i11];
    }

    @Override
    Iterator<c4.a> cellIterator() {
        return new a(size());
    }

    @Override
    public Set<c4.a> cellSet() {
        return super.cellSet();
    }

    @Override
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public Map<R, V> column(C c10) {
        com.google.common.base.m.o(c10);
        Integer num = this.columnKeyToIndex.get(c10);
        return num == null ? Collections.emptyMap() : new e(num.intValue());
    }

    public ImmutableList<C> columnKeyList() {
        return this.columnList;
    }

    @Override
    public Map<C, Map<R, V>> columnMap() {
        ArrayTable<R, C, V>.f fVar = this.columnMap;
        if (fVar != null) {
            return fVar;
        }
        ArrayTable<R, C, V>.f fVar2 = new f(this, null);
        this.columnMap = fVar2;
        return fVar2;
    }

    @Override
    public boolean contains(Object obj, Object obj2) {
        return containsRow(obj) && containsColumn(obj2);
    }

    @Override
    public boolean containsColumn(Object obj) {
        return this.columnKeyToIndex.containsKey(obj);
    }

    @Override
    public boolean containsRow(Object obj) {
        return this.rowKeyToIndex.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        for (V[] vArr : this.array) {
            for (V v10 : vArr) {
                if (com.google.common.base.j.a(obj, v10)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public V erase(Object obj, Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return set(num.intValue(), num2.intValue(), null);
    }

    public void eraseAll() {
        for (V[] vArr : this.array) {
            Arrays.fill(vArr, (Object) null);
        }
    }

    @Override
    public V get(Object obj, Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return at(num.intValue(), num2.intValue());
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.rowList.isEmpty() || this.columnList.isEmpty();
    }

    @Override
    public V put(R r10, C c10, V v10) {
        com.google.common.base.m.o(r10);
        com.google.common.base.m.o(c10);
        Integer num = this.rowKeyToIndex.get(r10);
        com.google.common.base.m.k(num != null, "Row %s not in %s", r10, this.rowList);
        Integer num2 = this.columnKeyToIndex.get(c10);
        com.google.common.base.m.k(num2 != null, "Column %s not in %s", c10, this.columnList);
        return set(num.intValue(), num2.intValue(), v10);
    }

    @Override
    public void putAll(c4 c4Var) {
        super.putAll(c4Var);
    }

    @Deprecated
    public V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    public Map<C, V> row(R r10) {
        com.google.common.base.m.o(r10);
        Integer num = this.rowKeyToIndex.get(r10);
        return num == null ? Collections.emptyMap() : new g(num.intValue());
    }

    public ImmutableList<R> rowKeyList() {
        return this.rowList;
    }

    @Override
    public Map<R, Map<C, V>> rowMap() {
        ArrayTable<R, C, V>.h hVar = this.rowMap;
        if (hVar != null) {
            return hVar;
        }
        ArrayTable<R, C, V>.h hVar2 = new h(this, null);
        this.rowMap = hVar2;
        return hVar2;
    }

    public V set(int i10, int i11, V v10) {
        com.google.common.base.m.m(i10, this.rowList.size());
        com.google.common.base.m.m(i11, this.columnList.size());
        V[] vArr = this.array[i10];
        V v11 = vArr[i11];
        vArr[i11] = v10;
        return v11;
    }

    @Override
    public int size() {
        return this.rowList.size() * this.columnList.size();
    }

    public V[][] toArray(Class<V> cls) {
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) cls, this.rowList.size(), this.columnList.size()));
        for (int i10 = 0; i10 < this.rowList.size(); i10++) {
            V[] vArr2 = this.array[i10];
            System.arraycopy(vArr2, 0, vArr[i10], 0, vArr2.length);
        }
        return vArr;
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    @Override
    Iterator<V> valuesIterator() {
        return new c(size());
    }

    public static <R, C, V> ArrayTable<R, C, V> create(c4 c4Var) {
        return c4Var instanceof ArrayTable ? new ArrayTable<>((ArrayTable) c4Var) : new ArrayTable<>(c4Var);
    }

    @Override
    public ImmutableSet<C> columnKeySet() {
        return this.columnKeyToIndex.keySet();
    }

    @Override
    public ImmutableSet<R> rowKeySet() {
        return this.rowKeyToIndex.keySet();
    }

    private ArrayTable(c4 c4Var) {
        this(c4Var.rowKeySet(), c4Var.columnKeySet());
        putAll(c4Var);
    }

    private ArrayTable(ArrayTable<R, C, V> arrayTable) {
        ImmutableList<R> immutableList = arrayTable.rowList;
        this.rowList = immutableList;
        ImmutableList<C> immutableList2 = arrayTable.columnList;
        this.columnList = immutableList2;
        this.rowKeyToIndex = arrayTable.rowKeyToIndex;
        this.columnKeyToIndex = arrayTable.columnKeyToIndex;
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, immutableList.size(), immutableList2.size()));
        this.array = vArr;
        for (int i10 = 0; i10 < this.rowList.size(); i10++) {
            V[] vArr2 = arrayTable.array[i10];
            System.arraycopy(vArr2, 0, vArr[i10], 0, vArr2.length);
        }
    }
}
