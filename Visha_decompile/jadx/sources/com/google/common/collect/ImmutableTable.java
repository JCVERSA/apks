package com.google.common.collect;

import defpackage.dgb;
import defpackage.v55;
import defpackage.xd8;
import defpackage.zq6;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;
import org.mozilla.javascript.ES6Iterator;

public abstract class ImmutableTable<R, C, V> extends e implements Serializable {
    private static final long serialVersionUID = 912559;

    public static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final int[] cellColumnIndices;
        private final int[] cellRowIndices;
        private final Object[] cellValues;
        private final Object[] columnKeys;
        private final Object[] rowKeys;

        public SerializedForm(Object[] objArr, Object[] objArr2, Object[] objArr3, int[] iArr, int[] iArr2) {
            this.rowKeys = objArr;
            this.columnKeys = objArr2;
            this.cellValues = objArr3;
            this.cellRowIndices = iArr;
            this.cellColumnIndices = iArr2;
        }

        public static SerializedForm create(ImmutableTable<?, ?, ?> immutableTable, int[] iArr, int[] iArr2) {
            return new SerializedForm(immutableTable.rowKeySet().toArray(), immutableTable.columnKeySet().toArray(), immutableTable.values().toArray(), iArr, iArr2);
        }

        public Object readResolve() {
            Object[] objArr = this.cellValues;
            if (objArr.length == 0) {
                return ImmutableTable.of();
            }
            int i = 0;
            if (objArr.length == 1) {
                return ImmutableTable.of(this.rowKeys[0], this.columnKeys[0], objArr[0]);
            }
            ImmutableList.a aVar = new ImmutableList.a(objArr.length);
            while (true) {
                Object[] objArr2 = this.cellValues;
                if (i >= objArr2.length) {
                    return RegularImmutableTable.forOrderedComponents(aVar.e(), ImmutableSet.copyOf(this.rowKeys), ImmutableSet.copyOf(this.columnKeys));
                }
                aVar.a(ImmutableTable.cellOf(this.rowKeys[this.cellRowIndices[i]], this.columnKeys[this.cellColumnIndices[i]], objArr2[i]));
                i++;
            }
        }
    }

    public static final class a {
        public final List a = Lists.i();
        public Comparator b;
        public Comparator c;

        public ImmutableTable a() {
            return b();
        }

        public ImmutableTable b() {
            int size = this.a.size();
            if (size != 0) {
                return size != 1 ? RegularImmutableTable.forCells(this.a, this.b, this.c) : new SingletonImmutableTable((r.a) v55.j(this.a));
            }
            return ImmutableTable.of();
        }

        public a c(a aVar) {
            this.a.addAll(aVar.a);
            return this;
        }

        public a d(r.a aVar) {
            if (aVar instanceof Tables.ImmutableCell) {
                xd8.p(aVar.getRowKey(), "row");
                xd8.p(aVar.getColumnKey(), "column");
                xd8.p(aVar.getValue(), ES6Iterator.VALUE_PROPERTY);
                this.a.add(aVar);
            } else {
                e(aVar.getRowKey(), aVar.getColumnKey(), aVar.getValue());
            }
            return this;
        }

        public a e(Object obj, Object obj2, Object obj3) {
            this.a.add(ImmutableTable.cellOf(obj, obj2, obj3));
            return this;
        }
    }

    public static <R, C, V> a builder() {
        return new a();
    }

    public static <R, C, V> r.a cellOf(R r, C c, V v) {
        return Tables.b(xd8.p(r, "rowKey"), xd8.p(c, "columnKey"), xd8.p(v, ES6Iterator.VALUE_PROPERTY));
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(r rVar) {
        return rVar instanceof ImmutableTable ? (ImmutableTable) rVar : copyOf(rVar.cellSet());
    }

    public static <R, C, V> ImmutableTable<R, C, V> of() {
        return (ImmutableTable<R, C, V>) SparseImmutableTable.EMPTY;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> toImmutableTable(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3) {
        return s.k(function, function2, function3);
    }

    @Override
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract ImmutableMap<C, Map<R, V>> columnMap();

    @Override
    public boolean contains(Object obj, Object obj2) {
        return get(obj, obj2) != null;
    }

    @Override
    public boolean containsColumn(Object obj) {
        return super.containsColumn(obj);
    }

    @Override
    public boolean containsRow(Object obj) {
        return super.containsRow(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override
    public abstract ImmutableSet<r.a> createCellSet();

    @Override
    public abstract ImmutableCollection<V> createValues();

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public Object get(Object obj, Object obj2) {
        return super.get(obj, obj2);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    @Deprecated
    public final V put(R r, C c, V v) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void putAll(r rVar) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract ImmutableMap<R, Map<C, V>> rowMap();

    @Override
    public abstract int size();

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public final Iterator<V> valuesIterator() {
        throw new AssertionError("should never be called");
    }

    public abstract Object writeReplace();

    public static <R, C, V> ImmutableTable<R, C, V> of(R r, C c, V v) {
        return new SingletonImmutableTable(r, c, v);
    }

    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> toImmutableTable(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3, BinaryOperator<V> binaryOperator) {
        return s.l(function, function2, function3, binaryOperator);
    }

    @Override
    public final dgb cellIterator() {
        throw new AssertionError("should never be called");
    }

    @Override
    public ImmutableSet<r.a> cellSet() {
        return (ImmutableSet) super.cellSet();
    }

    @Override
    public ImmutableMap<R, V> mo82column(C c) {
        xd8.p(c, "columnKey");
        return (ImmutableMap) zq6.a((ImmutableMap) columnMap().get(c), ImmutableMap.of());
    }

    @Override
    public ImmutableSet<C> columnKeySet() {
        return columnMap().keySet();
    }

    public ImmutableMap<C, V> m83row(R r) {
        xd8.p(r, "rowKey");
        return (ImmutableMap) zq6.a((ImmutableMap) rowMap().get(r), ImmutableMap.of());
    }

    @Override
    public ImmutableSet<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(Iterable<? extends r.a> iterable) {
        a aVarBuilder = builder();
        Iterator<? extends r.a> it = iterable.iterator();
        while (it.hasNext()) {
            aVarBuilder.d(it.next());
        }
        return aVarBuilder.a();
    }
}
