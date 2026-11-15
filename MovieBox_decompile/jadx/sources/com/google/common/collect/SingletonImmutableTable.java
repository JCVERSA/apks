package com.google.common.collect;

import java.util.Map;

class SingletonImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {
    final C singleColumnKey;
    final R singleRowKey;
    final V singleValue;

    SingletonImmutableTable(R r10, C c10, V v10) {
        this.singleRowKey = (R) com.google.common.base.m.o(r10);
        this.singleColumnKey = (C) com.google.common.base.m.o(c10);
        this.singleValue = (V) com.google.common.base.m.o(v10);
    }

    @Override
    public int size() {
        return 1;
    }

    @Override
    Object writeReplace() {
        return ImmutableTable.SerializedForm.create(this, new int[]{0}, new int[]{0});
    }

    @Override
    public ImmutableMap<R, V> mo288column(C c10) {
        com.google.common.base.m.o(c10);
        return containsColumn(c10) ? ImmutableMap.of(this.singleRowKey, (Object) this.singleValue) : ImmutableMap.of();
    }

    @Override
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.of(this.singleColumnKey, ImmutableMap.of(this.singleRowKey, (Object) this.singleValue));
    }

    @Override
    public ImmutableSet<c4.a> createCellSet() {
        return ImmutableSet.of(ImmutableTable.cellOf(this.singleRowKey, this.singleColumnKey, this.singleValue));
    }

    @Override
    public ImmutableCollection<V> createValues() {
        return ImmutableSet.of(this.singleValue);
    }

    @Override
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.of(this.singleRowKey, ImmutableMap.of(this.singleColumnKey, (Object) this.singleValue));
    }

    SingletonImmutableTable(c4.a aVar) {
        this(aVar.getRowKey(), aVar.getColumnKey(), aVar.getValue());
    }
}
