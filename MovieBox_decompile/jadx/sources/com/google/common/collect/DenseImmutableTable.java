package com.google.common.collect;

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

    private final class Column extends ImmutableArrayMap<R, V> {
        private final int columnIndex;

        Column(int i10) {
            super(DenseImmutableTable.this.columnCounts[i10]);
            this.columnIndex = i10;
        }

        @Override
        V getValue(int i10) {
            return (V) DenseImmutableTable.this.values[i10][this.columnIndex];
        }

        @Override
        boolean isPartialView() {
            return true;
        }

        @Override
        ImmutableMap<R, Integer> keyToIndex() {
            return DenseImmutableTable.this.rowKeyToIndex;
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    private final class ColumnMap extends ImmutableArrayMap<C, ImmutableMap<R, V>> {
        @Override
        boolean isPartialView() {
            return false;
        }

        @Override
        ImmutableMap<C, Integer> keyToIndex() {
            return DenseImmutableTable.this.columnKeyToIndex;
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }

        private ColumnMap() {
            super(DenseImmutableTable.this.columnCounts.length);
        }

        @Override
        public ImmutableMap<R, V> getValue(int i10) {
            return new Column(i10);
        }
    }

    private static abstract class ImmutableArrayMap<K, V> extends ImmutableMap.IteratorBasedImmutableMap<K, V> {
        private final int size;

        class a extends AbstractIterator {

            private int f29549c = -1;

            private final int f29550d;

            a() {
                this.f29550d = ImmutableArrayMap.this.keyToIndex().size();
            }

            @Override
            public Map.Entry a() {
                int i10 = this.f29549c;
                while (true) {
                    this.f29549c = i10 + 1;
                    int i11 = this.f29549c;
                    if (i11 >= this.f29550d) {
                        return (Map.Entry) b();
                    }
                    Object value = ImmutableArrayMap.this.getValue(i11);
                    if (value != null) {
                        return Maps.i(ImmutableArrayMap.this.getKey(this.f29549c), value);
                    }
                    i10 = this.f29549c;
                }
            }
        }

        ImmutableArrayMap(int i10) {
            this.size = i10;
        }

        private boolean a() {
            return this.size == keyToIndex().size();
        }

        @Override
        ImmutableSet<K> createKeySet() {
            return a() ? keyToIndex().keySet() : super.createKeySet();
        }

        @Override
        r4 entryIterator() {
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

        K getKey(int i10) {
            return keyToIndex().keySet().asList().get(i10);
        }

        abstract V getValue(int i10);

        abstract ImmutableMap<K, Integer> keyToIndex();

        @Override
        public int size() {
            return this.size;
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    private final class Row extends ImmutableArrayMap<C, V> {
        private final int rowIndex;

        Row(int i10) {
            super(DenseImmutableTable.this.rowCounts[i10]);
            this.rowIndex = i10;
        }

        @Override
        V getValue(int i10) {
            return (V) DenseImmutableTable.this.values[this.rowIndex][i10];
        }

        @Override
        boolean isPartialView() {
            return true;
        }

        @Override
        ImmutableMap<C, Integer> keyToIndex() {
            return DenseImmutableTable.this.columnKeyToIndex;
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    private final class RowMap extends ImmutableArrayMap<R, ImmutableMap<C, V>> {
        @Override
        boolean isPartialView() {
            return false;
        }

        @Override
        ImmutableMap<R, Integer> keyToIndex() {
            return DenseImmutableTable.this.rowKeyToIndex;
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }

        private RowMap() {
            super(DenseImmutableTable.this.rowCounts.length);
        }

        @Override
        public ImmutableMap<C, V> getValue(int i10) {
            return new Row(i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    DenseImmutableTable(ImmutableList<c4.a> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        this.values = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, immutableSet.size(), immutableSet2.size()));
        ImmutableMap<R, Integer> immutableMapJ = Maps.j(immutableSet);
        this.rowKeyToIndex = immutableMapJ;
        ImmutableMap<C, Integer> immutableMapJ2 = Maps.j(immutableSet2);
        this.columnKeyToIndex = immutableMapJ2;
        this.rowCounts = new int[immutableMapJ.size()];
        this.columnCounts = new int[immutableMapJ2.size()];
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i10 = 0; i10 < immutableList.size(); i10++) {
            c4.a aVar = immutableList.get(i10);
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
            iArr[i10] = iIntValue;
            iArr2[i10] = iIntValue2;
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
    c4.a getCell(int i10) {
        int i11 = this.cellRowIndices[i10];
        int i12 = this.cellColumnIndices[i10];
        R r10 = rowKeySet().asList().get(i11);
        C c10 = columnKeySet().asList().get(i12);
        V v10 = this.values[i11][i12];
        Objects.requireNonNull(v10);
        return ImmutableTable.cellOf(r10, c10, v10);
    }

    @Override
    V getValue(int i10) {
        V v10 = this.values[this.cellRowIndices[i10]][this.cellColumnIndices[i10]];
        Objects.requireNonNull(v10);
        return v10;
    }

    @Override
    public int size() {
        return this.cellRowIndices.length;
    }

    @Override
    Object writeReplace() {
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
