package com.google.common.collect;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
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

public abstract class ImmutableTable<R, C, V> extends i implements Serializable {
    private static final long serialVersionUID = 912559;

    static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final int[] cellColumnIndices;
        private final int[] cellRowIndices;
        private final Object[] cellValues;
        private final Object[] columnKeys;
        private final Object[] rowKeys;

        private SerializedForm(Object[] objArr, Object[] objArr2, Object[] objArr3, int[] iArr, int[] iArr2) {
            this.rowKeys = objArr;
            this.columnKeys = objArr2;
            this.cellValues = objArr3;
            this.cellRowIndices = iArr;
            this.cellColumnIndices = iArr2;
        }

        static SerializedForm create(ImmutableTable<?, ?, ?> immutableTable, int[] iArr, int[] iArr2) {
            return new SerializedForm(immutableTable.rowKeySet().toArray(), immutableTable.columnKeySet().toArray(), immutableTable.values().toArray(), iArr, iArr2);
        }

        Object readResolve() {
            Object[] objArr = this.cellValues;
            if (objArr.length == 0) {
                return ImmutableTable.of();
            }
            int i10 = 0;
            if (objArr.length == 1) {
                return ImmutableTable.of(this.rowKeys[0], this.columnKeys[0], objArr[0]);
            }
            ImmutableList.a aVar = new ImmutableList.a(objArr.length);
            while (true) {
                Object[] objArr2 = this.cellValues;
                if (i10 >= objArr2.length) {
                    return RegularImmutableTable.forOrderedComponents(aVar.e(), ImmutableSet.copyOf(this.rowKeys), ImmutableSet.copyOf(this.columnKeys));
                }
                aVar.a(ImmutableTable.cellOf(this.rowKeys[this.cellRowIndices[i10]], this.columnKeys[this.cellColumnIndices[i10]], objArr2[i10]));
                i10++;
            }
        }
    }

    public static final class a {

        private final List f29647a = Lists.i();

        private Comparator f29648b;

        private Comparator f29649c;

        public ImmutableTable a() {
            return b();
        }

        public ImmutableTable b() {
            int size = this.f29647a.size();
            if (size != 0) {
                return size != 1 ? RegularImmutableTable.forCells(this.f29647a, this.f29648b, this.f29649c) : new SingletonImmutableTable((c4.a) g3.j(this.f29647a));
            }
            return ImmutableTable.of();
        }

        a c(a aVar) {
            this.f29647a.addAll(aVar.f29647a);
            return this;
        }

        public a d(c4.a aVar) {
            if (aVar instanceof Tables.ImmutableCell) {
                com.google.common.base.m.p(aVar.getRowKey(), "row");
                com.google.common.base.m.p(aVar.getColumnKey(), "column");
                com.google.common.base.m.p(aVar.getValue(), AppMeasurementSdk.ConditionalUserProperty.VALUE);
                this.f29647a.add(aVar);
            } else {
                e(aVar.getRowKey(), aVar.getColumnKey(), aVar.getValue());
            }
            return this;
        }

        public a e(Object obj, Object obj2, Object obj3) {
            this.f29647a.add(ImmutableTable.cellOf(obj, obj2, obj3));
            return this;
        }
    }

    ImmutableTable() {
    }

    public static <R, C, V> a builder() {
        return new a();
    }

    static <R, C, V> c4.a cellOf(R r10, C c10, V v10) {
        return Tables.b(com.google.common.base.m.p(r10, "rowKey"), com.google.common.base.m.p(c10, "columnKey"), com.google.common.base.m.p(v10, AppMeasurementSdk.ConditionalUserProperty.VALUE));
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(c4 c4Var) {
        return c4Var instanceof ImmutableTable ? (ImmutableTable) c4Var : copyOf(c4Var.cellSet());
    }

    public static <R, C, V> ImmutableTable<R, C, V> of() {
        return (ImmutableTable<R, C, V>) SparseImmutableTable.EMPTY;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> toImmutableTable(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3) {
        return l4.k(function, function2, function3);
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
    public abstract ImmutableSet<c4.a> createCellSet();

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
    public final V put(R r10, C c10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void putAll(c4 c4Var) {
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
    final Iterator<V> valuesIterator() {
        throw new AssertionError("should never be called");
    }

    abstract Object writeReplace();

    public static <R, C, V> ImmutableTable<R, C, V> of(R r10, C c10, V v10) {
        return new SingletonImmutableTable(r10, c10, v10);
    }

    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> toImmutableTable(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3, BinaryOperator<V> binaryOperator) {
        return l4.l(function, function2, function3, binaryOperator);
    }

    @Override
    public final r4 cellIterator() {
        throw new AssertionError("should never be called");
    }

    @Override
    public ImmutableSet<c4.a> cellSet() {
        return (ImmutableSet) super.cellSet();
    }

    @Override
    public ImmutableMap<R, V> mo288column(C c10) {
        com.google.common.base.m.p(c10, "columnKey");
        return (ImmutableMap) com.google.common.base.h.a((ImmutableMap) columnMap().get(c10), ImmutableMap.of());
    }

    @Override
    public ImmutableSet<C> columnKeySet() {
        return columnMap().keySet();
    }

    public ImmutableMap<C, V> m289row(R r10) {
        com.google.common.base.m.p(r10, "rowKey");
        return (ImmutableMap) com.google.common.base.h.a((ImmutableMap) rowMap().get(r10), ImmutableMap.of());
    }

    @Override
    public ImmutableSet<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    static <R, C, V> ImmutableTable<R, C, V> copyOf(Iterable<? extends c4.a> iterable) {
        a aVarBuilder = builder();
        Iterator<? extends c4.a> it = iterable.iterator();
        while (it.hasNext()) {
            aVarBuilder.d(it.next());
        }
        return aVarBuilder.a();
    }
}
