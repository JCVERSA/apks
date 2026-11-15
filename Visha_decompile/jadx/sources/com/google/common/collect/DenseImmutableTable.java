package com.google.common.collect;

import defpackage.dgb;
import java.lang.reflect.Array;
import java.util.Map;
import java.util.Objects;

final class DenseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V> {
    private final int[] cellColumnIndices;
    private final int[] cellRowIndices;
    private final int[] columnCounts;
    private final ImmutableMap<C, Integer> columnKeyToIndex;
    private final ImmutableMap<C, ImmutableMap<R, V>> columnMap;
    private final int[] rowCounts;
    private final ImmutableMap<R, Integer> rowKeyToIndex;
    private final ImmutableMap<R, ImmutableMap<C, V>> rowMap;
    private final V[][] values;

    public final class Column extends ImmutableArrayMap<R, V> {
        private final int columnIndex;

        public Column(int i) {
            super(DenseImmutableTable.this.columnCounts[i]);
            this.columnIndex = i;
        }

        @Override
        public V getValue(int i) {
            return (V) DenseImmutableTable.this.values[i][this.columnIndex];
        }

        @Override
        public boolean isPartialView() {
            return true;
        }

        @Override
        public ImmutableMap<R, Integer> keyToIndex() {
            return DenseImmutableTable.this.rowKeyToIndex;
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public final class ColumnMap extends ImmutableArrayMap<C, ImmutableMap<R, V>> {
        @Override
        public boolean isPartialView() {
            return false;
        }

        @Override
        public ImmutableMap<C, Integer> keyToIndex() {
            return DenseImmutableTable.this.columnKeyToIndex;
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }

        public ColumnMap() {
            super(DenseImmutableTable.this.columnCounts.length);
        }

        @Override
        public ImmutableMap<R, V> getValue(int i) {
            return new Column(i);
        }
    }

    public static abstract class ImmutableArrayMap<K, V> extends ImmutableMap.IteratorBasedImmutableMap<K, V> {
        private final int size;

        public class a extends AbstractIterator {
            public int d = -1;
            public final int e;

            public a() {
                this.e = ImmutableArrayMap.this.keyToIndex().size();
            }

            @Override
            public Map.Entry a() {
                int i = this.d;
                while (true) {
                    this.d = i + 1;
                    int i2 = this.d;
                    if (i2 >= this.e) {
                        return (Map.Entry) b();
                    }
                    Object value = ImmutableArrayMap.this.getValue(i2);
                    if (value != null) {
                        return Maps.i(ImmutableArrayMap.this.getKey(this.d), value);
                    }
                    i = this.d;
                }
            }
        }

        public ImmutableArrayMap(int i) {
            this.size = i;
        }

        public final boolean a() {
            return this.size == keyToIndex().size();
        }

        @Override
        public ImmutableSet<K> createKeySet() {
            return a() ? keyToIndex().keySet() : super.createKeySet();
        }

        @Override
        public dgb entryIterator() {
            return new a();
        }

        @Override
        public V get(Object obj) {
            Integer num = keyToIndex().get(obj);
            if (num == null) {
                return null;
            }
            return getValue(num.intValue());
        }

        public K getKey(int i) {
            return keyToIndex().keySet().asList().get(i);
        }

        public abstract V getValue(int i);

        public abstract ImmutableMap<K, Integer> keyToIndex();

        @Override
        public int size() {
            return this.size;
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public final class Row extends ImmutableArrayMap<C, V> {
        private final int rowIndex;

        public Row(int i) {
            super(DenseImmutableTable.this.rowCounts[i]);
            this.rowIndex = i;
        }

        @Override
        public V getValue(int i) {
            return (V) DenseImmutableTable.this.values[this.rowIndex][i];
        }

        @Override
        public boolean isPartialView() {
            return true;
        }

        @Override
        public ImmutableMap<C, Integer> keyToIndex() {
            return DenseImmutableTable.this.columnKeyToIndex;
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public final class RowMap extends ImmutableArrayMap<R, ImmutableMap<C, V>> {
        @Override
        public boolean isPartialView() {
            return false;
        }

        @Override
        public ImmutableMap<R, Integer> keyToIndex() {
            return DenseImmutableTable.this.rowKeyToIndex;
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }

        public RowMap() {
            super(DenseImmutableTable.this.rowCounts.length);
        }

        @Override
        public ImmutableMap<C, V> getValue(int i) {
            return new Row(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DenseImmutableTable(ImmutableList<r.a> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        this.values = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, immutableSet.size(), immutableSet2.size()));
        ImmutableMap<R, Integer> immutableMapJ = Maps.j(immutableSet);
        this.rowKeyToIndex = immutableMapJ;
        ImmutableMap<C, Integer> immutableMapJ2 = Maps.j(immutableSet2);
        this.columnKeyToIndex = immutableMapJ2;
        this.rowCounts = new int[immutableMapJ.size()];
        this.columnCounts = new int[immutableMapJ2.size()];
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i = 0; i < immutableList.size(); i++) {
            r.a aVar = immutableList.get(i);
            Object rowKey = aVar.getRowKey();
            Object columnKey = aVar.getColumnKey();
            Integer num = this.rowKeyToIndex.get(rowKey);
            Objects.requireNonNull(num);
            int iIntValue = num.intValue();
            Integer num2 = this.columnKeyToIndex.get(columnKey);
            Objects.requireNonNull(num2);
            int iIntValue2 = num2.intValue();
            checkNoDuplicate(rowKey, columnKey, this.values[iIntValue][iIntValue2], aVar.getValue());
            ((V[][]) this.values)[iIntValue][iIntValue2] = aVar.getValue();
            int[] iArr3 = this.rowCounts;
            iArr3[iIntValue] = iArr3[iIntValue] + 1;
            int[] iArr4 = this.columnCounts;
            iArr4[iIntValue2] = iArr4[iIntValue2] + 1;
            iArr[i] = iIntValue;
            iArr2[i] = iIntValue2;
        }
        this.cellRowIndices = iArr;
        this.cellColumnIndices = iArr2;
        this.rowMap = new RowMap();
        this.columnMap = new ColumnMap();
    }

    @Override
    public V get(Object obj, Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return this.values[num.intValue()][num2.intValue()];
    }

    @Override
    public r.a getCell(int i) {
        int i2 = this.cellRowIndices[i];
        int i3 = this.cellColumnIndices[i];
        R r = rowKeySet().asList().get(i2);
        C c = columnKeySet().asList().get(i3);
        V v = this.values[i2][i3];
        Objects.requireNonNull(v);
        return ImmutableTable.cellOf(r, c, v);
    }

    @Override
    public V getValue(int i) {
        V v = this.values[this.cellRowIndices[i]][this.cellColumnIndices[i]];
        Objects.requireNonNull(v);
        return v;
    }

    @Override
    public int size() {
        return this.cellRowIndices.length;
    }

    @Override
    public Object writeReplace() {
        return ImmutableTable.SerializedForm.create(this, this.cellRowIndices, this.cellColumnIndices);
    }

    @Override
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.copyOf((Map) this.columnMap);
    }

    @Override
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.copyOf((Map) this.rowMap);
    }
}
