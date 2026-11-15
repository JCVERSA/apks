package com.google.common.collect;

import defpackage.dgb;

abstract class IndexedImmutableSet<E> extends ImmutableSet<E> {
    @Override
    public int copyIntoArray(Object[] objArr, int i) {
        return asList().copyIntoArray(objArr, i);
    }

    @Override
    public ImmutableList<E> createAsList() {
        return new ImmutableList<E>() {
            @Override
            public E get(int i) {
                return (E) IndexedImmutableSet.this.get(i);
            }

            @Override
            public boolean isPartialView() {
                return IndexedImmutableSet.this.isPartialView();
            }

            @Override
            public int size() {
                return IndexedImmutableSet.this.size();
            }

            @Override
            public Object writeReplace() {
                return super.writeReplace();
            }
        };
    }

    public abstract E get(int i);

    @Override
    public Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public dgb iterator() {
        return asList().iterator();
    }
}
