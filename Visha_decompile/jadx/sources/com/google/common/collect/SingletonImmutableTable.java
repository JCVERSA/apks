package com.google.common.collect;

import defpackage.xd8;
import java.util.Map;

class SingletonImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {
    final C singleColumnKey;
    final R singleRowKey;
    final V singleValue;

    public SingletonImmutableTable(R r, C c, V v) {
        this.singleRowKey = (R) xd8.o(r);
        this.singleColumnKey = (C) xd8.o(c);
        this.singleValue = (V) xd8.o(v);
    }

    @Override
    public int size() {
        return 1;
    }

    @Override
    public Object writeReplace() {
        return ImmutableTable.SerializedForm.create(this, new int[]{0}, new int[]{0});
    }

    @Override
    public ImmutableMap<R, V> mo82column(C c) {
        xd8.o(c);
        return containsColumn(c) ? ImmutableMap.of(this.singleRowKey, (Object) this.singleValue) : ImmutableMap.of();
    }

    @Override
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.of(this.singleColumnKey, ImmutableMap.of(this.singleRowKey, (Object) this.singleValue));
    }

    @Override
    public ImmutableSet<r.a> createCellSet() {
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

    public SingletonImmutableTable(r.a aVar) {
        this(aVar.getRowKey(), aVar.getColumnKey(), aVar.getValue());
    }
}
