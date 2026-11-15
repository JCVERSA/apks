package com.google.common.collect;

import defpackage.a3;
import defpackage.i3;
import defpackage.kc7;
import defpackage.xd8;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ArrayTable<R, C, V> extends com.google.common.collect.e implements Serializable {
    private static final long serialVersionUID = 0;
    private final V[][] array;
    private final ImmutableMap<C, Integer> columnKeyToIndex;
    private final ImmutableList<C> columnList;
    private transient ArrayTable<R, C, V>.f columnMap;
    private final ImmutableMap<R, Integer> rowKeyToIndex;
    private final ImmutableList<R> rowList;
    private transient ArrayTable<R, C, V>.h rowMap;

    public class a extends a3 {
        public a(int i) {
            super(i);
        }

        @Override
        public r.a a(int i) {
            return ArrayTable.this.getCell(i);
        }
    }

    public class b extends Tables.b {
        public final int b;
        public final int c;
        public final int d;
        public final ArrayTable e;

        public b(ArrayTable arrayTable, int i) {
            this.d = i;
            this.e = arrayTable;
            this.b = i / arrayTable.columnList.size();
            this.c = i % arrayTable.columnList.size();
        }

        @Override
        public Object getColumnKey() {
            return this.e.columnList.get(this.c);
        }

        @Override
        public Object getRowKey() {
            return this.e.rowList.get(this.b);
        }

        @Override
        public Object getValue() {
            return this.e.at(this.b, this.c);
        }
    }

    public class c extends a3 {
        public c(int i) {
            super(i);
        }

        @Override
        public Object a(int i) {
            return ArrayTable.this.getValue(i);
        }
    }

    public static abstract class d extends Maps.k {
        public final ImmutableMap b;

        public class a extends i3 {
            public final int b;
            public final d c;

            public a(d dVar, int i) {
                this.b = i;
                this.c = dVar;
            }

            @Override
            public Object getKey() {
                return this.c.c(this.b);
            }

            @Override
            public Object getValue() {
                return this.c.e(this.b);
            }

            @Override
            public Object setValue(Object obj) {
                return this.c.f(this.b, obj);
            }
        }

        public class b extends a3 {
            public b(int i) {
                super(i);
            }

            @Override
            public Map.Entry a(int i) {
                return d.this.b(i);
            }
        }

        public d(ImmutableMap immutableMap, a aVar) {
            this(immutableMap);
        }

        @Override
        public Iterator a() {
            return new b(size());
        }

        public Map.Entry b(int i) {
            xd8.m(i, size());
            return new a(this, i);
        }

        public Object c(int i) {
            return this.b.keySet().asList().get(i);
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean containsKey(Object obj) {
            return this.b.containsKey(obj);
        }

        public abstract String d();

        public abstract Object e(int i);

        public abstract Object f(int i, Object obj);

        @Override
        public Object get(Object obj) {
            Integer num = (Integer) this.b.get(obj);
            if (num == null) {
                return null;
            }
            return e(num.intValue());
        }

        @Override
        public boolean isEmpty() {
            return this.b.isEmpty();
        }

        @Override
        public Set keySet() {
            return this.b.keySet();
        }

        @Override
        public Object put(Object obj, Object obj2) {
            Integer num = (Integer) this.b.get(obj);
            if (num != null) {
                return f(num.intValue(), obj2);
            }
            throw new IllegalArgumentException(d() + " " + obj + " not in " + this.b.keySet());
        }

        @Override
        public Object remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int size() {
            return this.b.size();
        }

        public d(ImmutableMap immutableMap) {
            this.b = immutableMap;
        }
    }

    public class e extends d {
        public final int c;

        public e(int i) {
            super(ArrayTable.this.rowKeyToIndex, null);
            this.c = i;
        }

        @Override
        public String d() {
            return "Row";
        }

        @Override
        public Object e(int i) {
            return ArrayTable.this.at(i, this.c);
        }

        @Override
        public Object f(int i, Object obj) {
            return ArrayTable.this.set(i, this.c, obj);
        }
    }

    public class f extends d {
        public f(ArrayTable arrayTable, a aVar) {
            this();
        }

        @Override
        public String d() {
            return "Column";
        }

        @Override
        public Map e(int i) {
            return new e(i);
        }

        @Override
        public Map put(Object obj, Map map) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map f(int i, Map map) {
            throw new UnsupportedOperationException();
        }

        public f() {
            super(ArrayTable.this.columnKeyToIndex, null);
        }
    }

    public class g extends d {
        public final int c;

        public g(int i) {
            super(ArrayTable.this.columnKeyToIndex, null);
            this.c = i;
        }

        @Override
        public String d() {
            return "Column";
        }

        @Override
        public Object e(int i) {
            return ArrayTable.this.at(this.c, i);
        }

        @Override
        public Object f(int i, Object obj) {
            return ArrayTable.this.set(this.c, i, obj);
        }
    }

    public class h extends d {
        public h(ArrayTable arrayTable, a aVar) {
            this();
        }

        @Override
        public String d() {
            return "Row";
        }

        @Override
        public Map e(int i) {
            return new g(i);
        }

        @Override
        public Map put(Object obj, Map map) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map f(int i, Map map) {
            throw new UnsupportedOperationException();
        }

        public h() {
            super(ArrayTable.this.rowKeyToIndex, null);
        }
    }

    private ArrayTable(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        ImmutableList<R> immutableListCopyOf = ImmutableList.copyOf(iterable);
        this.rowList = immutableListCopyOf;
        ImmutableList<C> immutableListCopyOf2 = ImmutableList.copyOf(iterable2);
        this.columnList = immutableListCopyOf2;
        xd8.d(immutableListCopyOf.isEmpty() == immutableListCopyOf2.isEmpty());
        this.rowKeyToIndex = Maps.j(immutableListCopyOf);
        this.columnKeyToIndex = Maps.j(immutableListCopyOf2);
        this.array = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, immutableListCopyOf.size(), immutableListCopyOf2.size()));
        eraseAll();
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        return new ArrayTable<>(iterable, iterable2);
    }

    public r.a getCell(int i) {
        return new b(this, i);
    }

    public V getValue(int i) {
        return at(i / this.columnList.size(), i % this.columnList.size());
    }

    public V at(int i, int i2) {
        xd8.m(i, this.rowList.size());
        xd8.m(i2, this.columnList.size());
        return this.array[i][i2];
    }

    @Override
    public Iterator<r.a> cellIterator() {
        return new a(size());
    }

    @Override
    public Set<r.a> cellSet() {
        return super.cellSet();
    }

    @Override
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public Map<R, V> column(C c2) {
        xd8.o(c2);
        Integer num = this.columnKeyToIndex.get(c2);
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
            for (V v : vArr) {
                if (kc7.a(obj, v)) {
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
    public V put(R r, C c2, V v) {
        xd8.o(r);
        xd8.o(c2);
        Integer num = this.rowKeyToIndex.get(r);
        xd8.k(num != null, "Row %s not in %s", r, this.rowList);
        Integer num2 = this.columnKeyToIndex.get(c2);
        xd8.k(num2 != null, "Column %s not in %s", c2, this.columnList);
        return set(num.intValue(), num2.intValue(), v);
    }

    @Override
    public void putAll(r rVar) {
        super.putAll(rVar);
    }

    @Deprecated
    public V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    public Map<C, V> row(R r) {
        xd8.o(r);
        Integer num = this.rowKeyToIndex.get(r);
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

    public V set(int i, int i2, V v) {
        xd8.m(i, this.rowList.size());
        xd8.m(i2, this.columnList.size());
        V[] vArr = this.array[i];
        V v2 = vArr[i2];
        vArr[i2] = v;
        return v2;
    }

    @Override
    public int size() {
        return this.rowList.size() * this.columnList.size();
    }

    public V[][] toArray(Class<V> cls) {
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) cls, this.rowList.size(), this.columnList.size()));
        for (int i = 0; i < this.rowList.size(); i++) {
            V[] vArr2 = this.array[i];
            System.arraycopy(vArr2, 0, vArr[i], 0, vArr2.length);
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
    public Iterator<V> valuesIterator() {
        return new c(size());
    }

    public static <R, C, V> ArrayTable<R, C, V> create(r rVar) {
        return rVar instanceof ArrayTable ? new ArrayTable<>((ArrayTable) rVar) : new ArrayTable<>(rVar);
    }

    @Override
    public ImmutableSet<C> columnKeySet() {
        return this.columnKeyToIndex.keySet();
    }

    @Override
    public ImmutableSet<R> rowKeySet() {
        return this.rowKeyToIndex.keySet();
    }

    private ArrayTable(r rVar) {
        this(rVar.rowKeySet(), rVar.columnKeySet());
        putAll(rVar);
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
        for (int i = 0; i < this.rowList.size(); i++) {
            V[] vArr2 = arrayTable.array[i];
            System.arraycopy(vArr2, 0, vArr[i], 0, vArr2.length);
        }
    }
}
